# Rewriting someone else's README (demo mode)

For improving a README you don't own — a showcase demo, a PR draft, or a docs import. Same target structure as SKILL.md, plus: use the project's real assets, keep every cut fact reachable, and fix what upstream got wrong.

## Procedure

1. **Pull source and facts.** `gh api repos/OWNER/REPO --jq '{default_branch, license: .license.spdx_id}'`, then fetch the README from `raw.githubusercontent.com/OWNER/REPO/BRANCH/README.md` and read it in full. Stars, releases, and workflows also come from `gh api` — never guess.
2. **Mine assets beyond the README.** A repo with no images in its README usually keeps presentation assets (logo, banner, distro icons, screenshots) in its sibling website repo (`ORG.github.io`). Hotlink from `raw.githubusercontent.com`; never vendor copies. Verify each URL returns 200 before embedding, and vision-check ambiguous graphics — an app-internal store button is not a README badge. App-internal media (UI icons, fixtures) are not README assets; exclude them and say so in the header comment.
3. **Embed everything usable in a showcase.** The 6-screenshot cap applies to READMEs you own, not to a full-improvement demo: when the point is to show the upgrade, use every usable upstream asset. Organize a large screenshot set as a gallery: grouped by feature area (not file order), 2-4 shots per table row, width-capped `<img>` with an italic caption under each, hero shot right after the pitch.
4. **Badges must be true.** CI badge only if a workflow actually builds or tests (a stale-bot is not CI). Store badges only for listings that exist. Dynamic shields.io badges over baked-in badge images.
5. **Cut depth, link its new home.** Collapse long device/config tables and manual-style sections to a summary; every cut bullet links to the matching section of the upstream README. GitHub anchor slug: lowercase, strip punctuation (commas, ampersands, periods, quotes), spaces become hyphens — `Browse Servers, Channels & DMs` becomes `#browse-servers-channels--dms`.
6. **Asset-accounting header comment.** Open the file with an HTML comment: upstream repo and its license terms, which upstream assets are used, which internal media are excluded and why, and that all links were verified at write time.
7. **Verify and publish.** Run `scripts/link_check.sh` and interpret per the procedure rules in SKILL.md; privacy-scan for strings that must not appear in a public artifact. When pushing a demo to the user's repo, include the upstream original next to the rewrite for side-by-side comparison.
