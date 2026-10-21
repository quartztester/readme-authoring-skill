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
- Social-proof ladder with sample frequencies (website 17/21, chat 12/21, sponsors 8/21, contributors 4/21); include only what's true

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
| `demo/openrazer-README.md` | Sample: openrazer/openrazer's README rewritten with the skill, 358 to 121 lines, every project asset embedded and link-verified (logo, banner, 13 distro icons, frontend icons) |
| `demo/openrazer-original-README.md` | The upstream OpenRazer README, for side-by-side comparison |
| `demo/discrub-README.md` | Sample: pratherbytecraft/discrub's README rewritten with the skill, 628 to 163 lines, all 31 screenshots in a captioned gallery |
| `demo/discrub-original-README.md` | The upstream Discrub README, for side-by-side comparison |
| `demo/remark42-README.md` | Sample: umputun/remark42's README rebuilt with the skill, 49 to 110 lines; the sparse direction: screenshot uncollapsed to hero, install and license sections added, 22-bullet feature wall compressed to 8 |
| `demo/remark42-original-README.md` | The upstream Remark42 README, for side-by-side comparison |
| `demo/wytui-README.md` | Sample: willuhmjs/wytui's README polished with the skill, 131 to 107 lines; logo and badge row added to an already-solid README, env table trimmed, TODO comments where the repo has no screenshots |
| `demo/wytui-original-README.md` | The upstream wytui README, for side-by-side comparison |
| `research/analysis.json` | Structural analysis of all 21 repos: banners, badges, screenshots, install sizes, heading outlines, aggregate stats |
| `research/meta.json` | Repo metadata for the sample (stars, language, license) |
| `research/original-prompt.md` | The raw prompt that started this project, kept verbatim |
| `research/readmes/` | The 21 fetched READMEs the analysis is based on; content belongs to the respective projects |

## License

[GPL-3.0](LICENSE). The fetched READMEs under `research/readmes/` remain with their respective projects under their original licenses. The rewrites under `demo/` are demonstration derivatives of the respective upstream READMEs, kept with attribution under their upstream terms (OpenRazer: GPL-2.0-or-later; Remark42: MIT).
