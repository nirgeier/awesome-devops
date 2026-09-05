#!/usr/bin/env python3
"""
Replace leading external logo images in tools/**/README.md with local SVGs
found in logos/. Uses mapping.csv when available to map tool dirs
to downloaded SVG filenames.
"""
import csv
import re
import os
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
LOGOS_DIR = ROOT / 'logos'
MAPPING = LOGOS_DIR / 'mapping.csv'

img_re = re.compile(r'^!\[([^\]]*)\]\((https?://[^)]+)\)\s*$', re.IGNORECASE)

mapping = {}
if MAPPING.exists():
    with MAPPING.open() as f:
        reader = csv.DictReader(f)
        for r in reader:
            tp = r.get('tool_path','').strip()
            svg = r.get('svg','').strip()
            status = r.get('status','').strip()
            if tp and svg and status in ('downloaded','exists'):
                mapping[os.path.normpath(str(ROOT / tp))] = str(ROOT / svg)

updated = []
for md in (ROOT / 'tools').rglob('README.md'):
    try:
        text = md.read_text()
    except Exception:
        continue
    lines = text.splitlines()
    changed = False

    # check first 12 lines for an external image
    for i, line in enumerate(lines[:12]):
        m = img_re.match(line.strip())
        if not m:
            continue
        alt = m.group(1)

        # try mapping by exact tool dir
        tool_dir = os.path.normpath(str(md.parent))
        svg_path = None
        if tool_dir in mapping:
            svg_path = mapping[tool_dir]
        else:
            # fallback: try basename slug
            slug = md.parent.name.lower().replace(' ','-')
            candidate = LOGOS_DIR / f"{slug}.svg"
            if candidate.exists():
                svg_path = str(candidate)

        if svg_path:
            # compute relative path from README to svg
            try:
                rel = os.path.relpath(svg_path, start=str(md.parent))
            except Exception:
                rel = svg_path
            rel_posix = Path(rel).as_posix()
            lines[i] = f'![{alt}]({rel_posix})'
            changed = True
            break

    if changed:
        md.write_text('\n'.join(lines) + '\n')
        updated.append(str(md))

if updated:
    print('Updated READMEs:')
    for u in updated:
        print(' -', u)
else:
    print('No README files updated')
