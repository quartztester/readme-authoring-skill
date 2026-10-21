---
name: readme-authoring
description: Write concise dual-audience READMEs for apps and repos.
version: 0.2.0
author: quartztester, Hermes Agent
license: GPL-3.0
platforms: [linux, macos, windows]
metadata:
  hermes:
    tags: [readme, docs, writing, github, project-page]
    related_skills: [humanizer]
---

# README authoring

Write or de-verbose a project README so non-technical and technical readers both get what they need without wading through detail. The pattern is distilled from 21 heavily-starred repos (Godot, Invidious, Vaultwarden, Docusaurus, czkawka, FileConverter, Monkeytype, organicmaps, QGIS, and others; 172 to 118k stars each).

## What the sample proved

- Median README: 126 lines, about 7 KB. The most-starred (Godot, 118k stars) is 77 lines. Length is not credibility.
- 20/21 open with a centered logo or banner image.
- 21/21 have at least one non-badge image; 13/21 have three or more.
- 14/21 have badges, median 3 per repo.
- Install sections hold a median of ~20 words of copy-paste plus links. Depth (full configs, compilation, architecture) lives in linked docs, wikis, or websites.
- Only 300+ line READMEs carry a table of contents.
- Social proof is tiered: website links 17/21, chat 12/21, forums 10/21, sponsors or donations 8/21, translation widgets 8/21, contributor displays 4/21.

## When to use

- Writing a README for a new app, tool, library, or self-hosted service
- Rewriting an AI-generated or bloated README
- Rewriting a README you don't own (demo, showcase, PR draft): follow `references/demo-rewrite.md`
- Reviewing a README against the checklist

Don't use for: documentation sites, API references, CONTRIBUTING.md, SECURITY.md.

## The two readers

1. **Non-technical visitor**: "What is this? What does it look like? Can I use it?" Reads top down, stops at the install section.
2. **Technical evaluator**: "Does CI pass? How do I run it? What's the license?" Skims badges, jumps to install, follows links for depth.

The first screen (before scrolling) belongs to reader 1: logo, one-sentence pitch, badges, hero screenshot. Everything after serves reader 2 and links out for depth.

## Structure, in order

Start from `templates/README-template.md` and delete what doesn't apply:

1. Centered logo or banner (width 160-400), linked to the website if there is one
2. `# Project name` plus a one-sentence pitch as subtitle
3. Badge row, 6 max, all true
4. One line of quick links: Website, Docs, Chat, Donate (only links that exist)
5. Hero screenshot or short GIF of the app doing its main job, with a one-line caption
6. `## Features`: 5-10 one-line bullets, benefit first
7. `## Quick start`, split by audience: "Using it" (download, public instance, app store) and "Running it yourself" (Docker, package manager, CLI); per-OS copy-paste; link to full docs
8. `## Documentation`: one line plus link (omit when the README is the docs)
9. `## Community`: chat, forum, issue tracker
10. `## Contributing` and `## License`: one line each
11. Star History chart as the footer

## The depth rule

The README is a landing page; depth lives behind links. When rewriting, nothing factual is deleted: it either stays or gets a linked home (`docs/`, wiki, website, upstream README anchor).

Limits are high on purpose: a section slightly over is a trimming problem, not a docs-folder problem.

- Sections up to ~300 words stay inline without question
- 300-500 words: tighten first (cut restatements, collapse steps); keep inline if it is setup a first-time user needs
- Only past ~500 words, or a config table past ~15 rows, does content move out. Prefer an existing home (website, wiki, Discussions) over creating `docs/`, and create `docs/` only when several sections genuinely overflow, never for one
- Never inline: architecture deep-dives, API references, changelogs, full CLI flag lists, dependency catalogs, dev-environment setup (one-line link under Contributing), long credits or localization lists
- Test for every line: does it help a first-time visitor decide "should I install this?" or "how do I run it?" If not, cut it

## Writing rules

- Pitch model (FileConverter): "**File Converter** is a very simple tool which allows you to convert and compress one or several file(s) using the context menu of Windows Explorer." One sentence: what it does and how you use it.
- Features are benefits, not implementations: "Finds duplicate files even when they're renamed" beats "Uses xxHash with caching"
- Sentence-case headings; no emoji in headings; no bolded-label bullets
- Banned: "This repository contains", "Welcome to", "Whether you're a beginner or an expert", "In today's fast-paced world", "Let's dive in", "blazing-fast", "seamless", "powerful", "comprehensive", "robust", "delve", "showcase", "testament"
- Say "is", not "serves as" or "stands as"
- No rhetorical questions answered in the next sentence; no rule-of-three padding
- Small tools: an honest "When you need it / When you don't" section beats marketing copy (sveltia-cms-auth does this well)

## Badges

6 max, every one true and verifiable. CI badges embed the real workflow filename: read it from `.github/workflows/` first (`search_files` on a local repo, or the GitHub contents API). A repo with only a license badge shows only a license badge. Common snippets, replacing OWNER/REPO:

| Badge | Snippet |
|---|---|
| CI | `[![CI](https://github.com/OWNER/REPO/actions/workflows/ci.yml/badge.svg)](https://github.com/OWNER/REPO/actions/workflows/ci.yml)` |
| License | `[![License](https://img.shields.io/github/license/OWNER/REPO)](LICENSE)` |
| Release | `[![Release](https://img.shields.io/github/v/release/OWNER/REPO)](https://github.com/OWNER/REPO/releases/latest)` |
| Downloads | `[![Downloads](https://img.shields.io/github/downloads/OWNER/REPO/total)](https://github.com/OWNER/REPO/releases)` |
| npm | `[![npm](https://img.shields.io/npm/v/PACKAGE)](https://www.npmjs.com/package/PACKAGE)` |
| PyPI | `[![PyPI](https://img.shields.io/pypi/v/PACKAGE)](https://pypi.org/project/PACKAGE)` |
| Docker | `[![Docker Pulls](https://img.shields.io/docker/pulls/IMAGE)](https://hub.docker.com/r/IMAGE)` |
| Discord | `[![Discord](https://img.shields.io/discord/SERVERID)](https://discord.gg/INVITE)` |
| Matrix | `[![Matrix](https://img.shields.io/matrix/ROOM:server.svg)](https://matrix.to/#/#ROOM:server)` |

## Screenshots and assets

- The hero shot shows the app doing its main job; a 5-second GIF beats a paragraph (FileConverter's context-menu GIF)
- Up to 6 screenshots; a 3-column markdown table keeps them tidy (Invidious pattern)
- Alt text on every image; one-line caption under the hero
- Reference only images that exist in the repo (`docs/`, `assets/`, `.github/`, `resources/`). Verify with `search_files` or the GitHub contents API. If a good image doesn't exist yet, drop in `<!-- TODO: add a screenshot at docs/screenshot-main.png -->`; never invent a path
- A repo with no images in its README often keeps presentation assets (logo, banner, distro icons, screenshots) in its sibling website repo (`ORG.github.io`); hotlink from `raw.githubusercontent.com` after verifying each URL returns 200, and never vendor copies
- Sanitize screenshots: no emails, usernames, real personal domains, tokens, or keys visible

## Social proof

Include only what's true for the repo, ranked by how common it is in the sample:

- Website link (17/21): first quick link when a site exists
- Chat channel (12/21): Matrix, Discord, IRC; under Community
- Forum or discussions (10/21): Discourse, subreddit, GitHub Discussions
- Contributing guide (9/21): one line plus a link to CONTRIBUTING.md
- Sponsors and donations (8/21): OpenCollective, GitHub Sponsors, Patreon, Liberapay. Established projects only; a donate section on a two-week-old repo reads as presumptuous
- Translation widget (8/21): Weblate or Crowdin badge when the app is translated
- Social media (6/21): only accounts that are active
- Acknowledgements (6/21): one line crediting what inspired the project
- Contributors display (4/21): OpenCollective backers and sponsors avatar walls, a contrib.rocks image, or a link to /graphs/contributors
- Skip stars, forks and issues badges (4/21, all large projects): the GitHub UI already shows them. "How to cite" is for academic tools only

## Star History footer

`[![Star History Chart](https://api.star-history.com/svg?repos=OWNER/REPO&type=Date)](https://star-history.com/#OWNER/REPO&Date)`

Only 1 of the 21 exemplars had one, but it gives an instant popularity-over-time read, so include it as house style. For a brand-new repo with no curve yet, add it once stars accumulate.

## Procedure

1. Gather facts: what the app does, target platforms, install methods, license, chat and forum links, docs URL, CI workflow filename. Use `read_file`, `search_files`, `terminal`, or the GitHub API.
2. Inventory assets: logo, screenshots, GIFs. Verify every path you plan to reference.
3. Draft from `templates/README-template.md`; delete sections that don't apply.
4. De-verbose pass: apply the depth rule, then the writing rules. Every cut fact keeps a home, inline or linked.
5. Verify against the checklist. Confirm every image path exists (`search_files` for local paths), then link-check the finished file with `scripts/link_check.sh`. Every URL must resolve. Interpret before editing: 404 = dead, relink or drop — for a moved GitHub repo, `gh api repos/OWNER/NAME` follows the rename redirect and returns the live `full_name`; 403 on bot-blocking hosts (ko-fi, reddit) = confirm the target via search before dropping; never construct a URL from a plain-text mention — keep it plain text unless you verified it.

## Pitfalls

- Invented image paths and badge URLs (badges embed owner, repo, and workflow names; read the real ones)
- Badge walls: Monkeytype runs 21 and Vaultwarden 17; established projects get away with it, new ones read as insecure
- Keeping a TOC in a sub-200-line README
- Cutting detail without leaving the link
- "Features" that are implementation details
- Adding a "Why X?" philosophy section; Organic Maps is the exception that proves the rule, and that's their brand

## Verification checklist

- [ ] Logo or banner visible without scrolling (or TODO marker if none exists)
- [ ] Pitch is one sentence, jargon-free
- [ ] 6 or fewer badges, all true (CI workflow filename verified against `.github/workflows/`)
- [ ] Hero screenshot or GIF shows real usage (or TODO marker)
- [ ] 5-10 feature bullets, one line each, or the section omitted for tiny tools
- [ ] Install is copy-paste, split by audience, tight (~150-word target; a little over stays inline)
- [ ] Total under 200 lines (hard cap 250)
- [ ] Every image path exists in the repo; `scripts/link_check.sh` reports every URL resolving
- [ ] Every cut fact has a linked home
- [ ] No docs/ folder was created to park a single slightly-over section
- [ ] Social proof elements (chat, sponsors, contributors, translations) are all true for this repo
- [ ] Star History chart at the bottom (or deferred for zero-star repos)
- [ ] No personal data in screenshots
