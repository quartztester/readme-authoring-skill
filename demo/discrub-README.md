<!-- Skill demo: the pratherbytecraft/discrub README rewritten with the readme-authoring skill.
     Upstream README (c) 2026 Prather Bytecraft, all rights reserved; quoted and modified here as a
     demonstration with attribution: https://github.com/pratherbytecraft/discrub
     Every image, badge and link below was verified to resolve (HTTP 200) at write time.
     Asset accounting: all 31 docs/screenshots images (hero + gallery) and the discrub.png logo are used.
     App-internal media (chromestore.svg, GUILD_*.svg, default_avatar.png, cypress fixtures) are
     extension UI resources, not README assets. Depth cut from the upstream README keeps its home:
     every feature bullet links to the matching section of the upstream README. -->

<div align="center">

<img src="https://raw.githubusercontent.com/pratherbytecraft/discrub/main/public/classic-chrome/public/resources/media/discrub.png" alt="Discrub logo" width="120">

# Discrub

**Export, search, purge and re-browse your own Discord messages, reactions and media. Runs as a browser extension or web app, entirely in your browser: no backend, no data collection.**

[![Chrome Web Store](https://img.shields.io/chrome-web-store/v/plhdclenpaecffbcefjmpkkbdpkmhhbj)](https://chromewebstore.google.com/detail/plhdclenpaecffbcefjmpkkbdpkmhhbj)
[![Chrome Web Store Rating](https://img.shields.io/chrome-web-store/rating/plhdclenpaecffbcefjmpkkbdpkmhhbj)](https://chromewebstore.google.com/detail/plhdclenpaecffbcefjmpkkbdpkmhhbj)
[![Firefox Add-ons](https://img.shields.io/amo/v/discrub)](https://addons.mozilla.org/firefox/addon/discrub/)

</div>

> [!IMPORTANT]
> Fake copies of Discrub exist on extension stores. The only genuine listings are the
> [Chrome Web Store](https://chromewebstore.google.com/detail/plhdclenpaecffbcefjmpkkbdpkmhhbj) and
> [Firefox Add-ons](https://addons.mozilla.org/firefox/addon/discrub/) pages linked here, as also listed
> in [SECURITY.md](https://github.com/pratherbytecraft/discrub/blob/main/SECURITY.md).

![The message table](https://raw.githubusercontent.com/pratherbytecraft/discrub/main/docs/screenshots/messages/message-table.png)
*The message table: browse a channel, search it, and select messages in bulk.*

## What Discrub does

- [Export](https://github.com/pratherbytecraft/discrub#export) channels, DMs and forum threads to HTML, plain text, CSV, JSON or media-only archives, with 10 built-in presets and custom presets
- [Search](https://github.com/pratherbytecraft/discrub#message-feed-search--filters) with Discord's own filters (author, date, attachments, mentions, pinned state) and refine the results locally; Load All continues past Discord's 5,000-result search cap
- [Purge](https://github.com/pratherbytecraft/discrub#purge) your own messages in bulk, by filter, across channels or entire servers, with pause, resume and cancel
- [Reactions](https://github.com/pratherbytecraft/discrub#reactions): see who reacted, and add or remove reactions in bulk, per user or per emoji
- [Data packages](https://github.com/pratherbytecraft/discrub#data-package-import--rehydration): import the ZIP from Discord's "Request All of My Data" and browse, analyze or re-export your full history offline; the file never leaves your device
- [Analytics](https://github.com/pratherbytecraft/discrub#analytics): nine reports over any loaded history (most active members, most mentioned, keywords, linked domains), each with a chart and CSV export
- [Workspaces](https://github.com/pratherbytecraft/discrub#workspaces) keep conversations on disk, so you can close the tab and resume later where you left off

## Screenshots

**Browsing** — servers, channels and DMs ([details](https://github.com/pratherbytecraft/discrub#browse-servers-channels--dms))

| | | |
|---|---|---|
| <img src="https://raw.githubusercontent.com/pratherbytecraft/discrub/main/docs/screenshots/browsing/server-list.png" width="280" alt="Server list"><br>*Server list* | <img src="https://raw.githubusercontent.com/pratherbytecraft/discrub/main/docs/screenshots/browsing/channel-list.png" width="280" alt="Channel list"><br>*Channels; locked where you lack permission* | <img src="https://raw.githubusercontent.com/pratherbytecraft/discrub/main/docs/screenshots/browsing/dm-list.png" width="280" alt="DM list"><br>*DM list with group chips* |
| <img src="https://raw.githubusercontent.com/pratherbytecraft/discrub/main/docs/screenshots/browsing/multi-select.png" width="280" alt="Multi-select"><br>*Multi-select mode on the lists* | | |

**Messages** — feed, search and profiles ([details](https://github.com/pratherbytecraft/discrub#message-feed-search--filters))

| | | |
|---|---|---|
| <img src="https://raw.githubusercontent.com/pratherbytecraft/discrub/main/docs/screenshots/messages/search-filters.png" width="280" alt="Search and filters"><br>*Search and Refine filters* | <img src="https://raw.githubusercontent.com/pratherbytecraft/discrub/main/docs/screenshots/messages/toolbar-selection.png" width="280" alt="Toolbar selection"><br>*Bulk selection from the toolbar* | <img src="https://raw.githubusercontent.com/pratherbytecraft/discrub/main/docs/screenshots/messages/user-profile.png" width="280" alt="User profile"><br>*Profile card with filter shortcuts* |
| <img src="https://raw.githubusercontent.com/pratherbytecraft/discrub/main/docs/screenshots/messages/sticker-poll.png" width="280" alt="Sticker and poll"><br>*Stickers and polls render inline* | | |

**Export** — five formats, presets and media settings ([details](https://github.com/pratherbytecraft/discrub#export))

| | | |
|---|---|---|
| <img src="https://raw.githubusercontent.com/pratherbytecraft/discrub/main/docs/screenshots/export/export-dialog.png" width="280" alt="Export dialog"><br>*Export dialog* | <img src="https://raw.githubusercontent.com/pratherbytecraft/discrub/main/docs/screenshots/export/preset-selector.png" width="280" alt="Preset selector"><br>*Built-in presets* | <img src="https://raw.githubusercontent.com/pratherbytecraft/discrub/main/docs/screenshots/export/media-settings.png" width="280" alt="Media settings"><br>*Per-type media selection* |
| <img src="https://raw.githubusercontent.com/pratherbytecraft/discrub/main/docs/screenshots/export/plain-text-options.png" width="280" alt="Plain text options"><br>*Plain text options* | | |

**Purge** — bulk delete with safeguards ([details](https://github.com/pratherbytecraft/discrub#purge))

| | | |
|---|---|---|
| <img src="https://raw.githubusercontent.com/pratherbytecraft/discrub/main/docs/screenshots/purge/purge-dialog.png" width="280" alt="Purge dialog"><br>*Purge dialog* | <img src="https://raw.githubusercontent.com/pratherbytecraft/discrub/main/docs/screenshots/purge/bulk-edit-dialog.png" width="280" alt="Bulk edit dialog"><br>*Bulk edit across channels* | |

**Reactions** — per-user and per-emoji control ([details](https://github.com/pratherbytecraft/discrub#reactions))

| | | |
|---|---|---|
| <img src="https://raw.githubusercontent.com/pratherbytecraft/discrub/main/docs/screenshots/reactions/reaction-modal.png" width="280" alt="Reaction modal"><br>*Who reacted, with per-user removal* | <img src="https://raw.githubusercontent.com/pratherbytecraft/discrub/main/docs/screenshots/reactions/add-reactions.png" width="280" alt="Add reactions"><br>*Batch-add reactions* | |

**Forum channels** — active and archived threads ([details](https://github.com/pratherbytecraft/discrub#forum-channels))

| | | |
|---|---|---|
| <img src="https://raw.githubusercontent.com/pratherbytecraft/discrub/main/docs/screenshots/forum/thread-list.png" width="280" alt="Forum threads"><br>*Thread list with archive chips* | | |

**Analytics** — nine reports with charts and CSV ([details](https://github.com/pratherbytecraft/discrub#analytics))

| | | |
|---|---|---|
| <img src="https://raw.githubusercontent.com/pratherbytecraft/discrub/main/docs/screenshots/analytics/analytics-modal.png" width="280" alt="Analytics"><br>*Analytics reports* | | |

**Data packages** — your full Discord history, offline ([details](https://github.com/pratherbytecraft/discrub#data-package-import--rehydration))

| | | |
|---|---|---|
| <img src="https://raw.githubusercontent.com/pratherbytecraft/discrub/main/docs/screenshots/package/package-empty-state.png" width="280" alt="Package empty state"><br>*Package tab, empty state* | <img src="https://raw.githubusercontent.com/pratherbytecraft/discrub/main/docs/screenshots/package/package-message-browser.png" width="280" alt="Package message browser"><br>*Browse package messages offline* | <img src="https://raw.githubusercontent.com/pratherbytecraft/discrub/main/docs/screenshots/package/package-filter.png" width="280" alt="Package filter"><br>*Filter package messages locally* |
| <img src="https://raw.githubusercontent.com/pratherbytecraft/discrub/main/docs/screenshots/package/package-rehydrated.png" width="280" alt="Package rehydrated"><br>*A channel after rehydration* | <img src="https://raw.githubusercontent.com/pratherbytecraft/discrub/main/docs/screenshots/package/package-reaction-modal.png" width="280" alt="Package reactions"><br>*Reaction data after rehydration* | <img src="https://raw.githubusercontent.com/pratherbytecraft/discrub/main/docs/screenshots/package/package-analytics.png" width="280" alt="Package analytics"><br>*Analytics over your full history* |

**Settings, status and themes** ([details](https://github.com/pratherbytecraft/discrub#settings--preferences))

| | | |
|---|---|---|
| <img src="https://raw.githubusercontent.com/pratherbytecraft/discrub/main/docs/screenshots/settings/settings-dialog.png" width="280" alt="Settings"><br>*Settings* | <img src="https://raw.githubusercontent.com/pratherbytecraft/discrub/main/docs/screenshots/ui/status-log.png" width="280" alt="Status log"><br>*Status log* | <img src="https://raw.githubusercontent.com/pratherbytecraft/discrub/main/docs/screenshots/ui/theme-dark.png" width="280" alt="Dark theme"><br>*Dark theme* |
| <img src="https://raw.githubusercontent.com/pratherbytecraft/discrub/main/docs/screenshots/ui/theme-light.png" width="280" alt="Light theme"><br>*Light theme* | | |

**Sign-in and first run** ([details](https://github.com/pratherbytecraft/discrub#getting-started))

| | | |
|---|---|---|
| <img src="https://raw.githubusercontent.com/pratherbytecraft/discrub/main/docs/screenshots/auth/landing-page.png" width="280" alt="Landing page"><br>*Sign-in page (web app)* | <img src="https://raw.githubusercontent.com/pratherbytecraft/discrub/main/docs/screenshots/welcome/welcome-panel.png" width="280" alt="Welcome panel"><br>*Welcome panel* | |

## Install

**Extension (recommended)** — it signs in on Discord for you:

1. Install from the [Chrome Web Store](https://chromewebstore.google.com/detail/plhdclenpaecffbcefjmpkkbdpkmhhbj) or [Firefox Add-ons](https://addons.mozilla.org/firefox/addon/discrub/)
2. Open [discord.com](https://discord.com)
3. Click the Discrub icon and pick **Discrub 2.0** or **Discrub Classic** on the splash screen

**Web app** — signs in with your Discord token, pasted in by hand. Treat the token like a password: anyone holding it can act as your account. Finding it is covered in [Getting Started](https://github.com/pratherbytecraft/discrub#getting-started).

**Discrub Classic** — the original interface is still built into the extension, and the last standalone builds live on the [discrub-ext releases page](https://github.com/pratherbytecraft/discrub-ext/releases) with manual install steps.

## Web app or extension?

| | Web app | Extension |
|---|---|---|
| Sign in | Manual token entry | Automatic |
| "Other files" media type (PDFs, ZIPs) | Not available | Available |
| Overlay on Discord | No | Yes |
| Auto-update | Always latest | Browser handles it |
| Discrub Classic | Not available | Built-in |

## Safety

- Discrub runs entirely in your browser. Your token never leaves your device: no backend server, no data collection, no analytics ([FAQ](https://github.com/pratherbytecraft/discrub#faq))
- API calls are paced with randomization; rate limits trigger waits, and long runs take rest breaks by default ([FAQ](https://github.com/pratherbytecraft/discrub#will-i-get-rate-limited))
- Verify any downloaded package against the published SHA-256 checksums in [SECURITY.md](https://github.com/pratherbytecraft/discrub/blob/main/SECURITY.md)

## Support

- Bugs and ideas: [GitHub issues](https://github.com/pratherbytecraft/discrub/issues), support@pratherbytecraft.com, or [r/discrub](https://www.reddit.com/r/discrub/)
- Every feature is free. Supporters unlock extra layouts, themes and Scrublings, and multiple workspaces: [Ko-fi commissions](https://ko-fi.com/prathercc/commissions)
- First time here? The [FAQ](https://github.com/pratherbytecraft/discrub#faq) covers safety, rate limits and permissions in detail

## Development

React 18 + TypeScript + Vite, with 4,000+ unit tests (Vitest), 740+ E2E tests (Cypress) and Storybook.

```bash
npm install --legacy-peer-deps
npm run dev        # http://localhost:3000
```

Build, test and screenshot commands: [Development](https://github.com/pratherbytecraft/discrub#development).

## License

All rights reserved, © 2026 Prather Bytecraft. The source is visible for transparency and security review; the supported ways to use Discrub are the official store listings. "Discrub" and the Discrub logo are trademarks of Prather Bytecraft and may not be used in derivative or competing works.

Built by [Prather Bytecraft](https://github.com/pratherbytecraft) · [pratherbytecraft.com](https://pratherbytecraft.com)

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=pratherbytecraft/discrub&type=Date)](https://star-history.com/#pratherbytecraft/discrub&Date)
