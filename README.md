<!-- TODO: add a logo or banner at docs/logo.png -->

# readme-authoring skill

**A portable AI skill that writes concise, dual-audience READMEs, distilled from 21 of the best open-source projects.**

[![License](https://img.shields.io/github/license/quartztester/readme-authoring-skill)](LICENSE)

AI-generated READMEs drown readers in configuration tables, architecture notes, and 25-item feature walls. This skill produces the structure top projects actually ship: logo, one-sentence pitch, badges, screenshots, copy-paste install, with all depth behind links.

## Features

- One SKILL.md plus a fill-in template; works with any agent that loads SKILL.md files (Hermes Agent, Claude Code, Codex, and others)
- Structure proven across 21 starred repos (172 to 118k stars): 20/21 open with a logo, median length 126 lines, install sections around 20 words plus links
- Depth rule: any section over ~150 words or config table over ~8 rows moves to docs and becomes a link, so nothing is deleted without a linked home
- Writing rules that kill AI-isms ("This repository contains…", "blazing-fast", "seamless") and phrase features as benefits
- Verification checklist: badges checked against real workflow filenames, image paths must exist, screenshots sanitized

## Install

Copy `SKILL.md` and `templates/` into your agent's skills directory:

```text
Claude Code:          .claude/skills/readme-authoring/  (per repo)  or  ~/.claude/skills/  (global)
Hermes Agent:         ~/.hermes/skills/software-development/readme-authoring/
Any SKILL.md loader:  readme-authoring/SKILL.md
```

Then ask your agent to "write a README for this repo" or "rewrite this README with the readme-authoring skill".

## What's here

| Path | What it is |
|---|---|
| `SKILL.md` | The skill |
| `templates/README-template.md` | Fill-in README skeleton |
| `demo/sveltia-cms-auth-README.md` | Sample: the sveltia/sveltia-cms-auth README rewritten with the skill, 135 to 68 lines, every fact kept or linked |
| `research/analysis.json` | Structural analysis of all 21 repos: banners, badges, screenshots, install sizes, heading outlines, aggregate stats |
| `research/meta.json` | Repo metadata for the sample (stars, language, license) |
| `research/readmes/` | The 21 fetched READMEs the analysis is based on; content belongs to the respective projects |

## License

[GPL-3.0](LICENSE). The fetched READMEs under `research/readmes/` remain with their respective projects under their original licenses.
