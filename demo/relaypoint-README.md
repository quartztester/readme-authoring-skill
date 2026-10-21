<!-- Skill demo: the willuhmjs/relaypoint README rewritten with the readme-authoring skill (v0.2.0).
     Upstream README (c) willuhmjs, MIT; quoted and modified here as a demonstration with
     attribution: https://github.com/willuhmjs/relaypoint
     Every image, badge and link below was verified to resolve (HTTP 200) at write time.
     Asset accounting: the og-image serves as the banner and dashboard.png as the hero. The
     favicon is a generic low-resolution monitor glyph and is not used. Star History is deferred
     per the skill rule for zero-star repos; add the chart once a curve forms.
     Changes vs upstream: banner added; the 16-row configuration table trimmed to 10 rows with
     the annotated .env.example as the linked home for the rest; Project structure compressed to
     one line; Testing folded into Local development; FAQ answers tightened. All three upstream
     badges kept (CI workflow verified real). -->

<div align="center">

<img src="https://raw.githubusercontent.com/willuhmjs/relaypoint/main/static/og-image.png" alt="RelayPoint banner" width="640">

**Open-source digital signage, managed from anywhere.**

[![CI](https://github.com/willuhmjs/relaypoint/actions/workflows/ci.yml/badge.svg)](https://github.com/willuhmjs/relaypoint/actions/workflows/ci.yml)
[![License](https://img.shields.io/github/license/willuhmjs/relaypoint)](https://github.com/willuhmjs/relaypoint/blob/main/LICENSE)
[![Node](https://img.shields.io/badge/node-%E2%89%A522-brightgreen)](https://nodejs.org)

[Features](#features) · [Quickstart](#quickstart) · [Configuration](#configuration) · [Deployment](#deployment) · [FAQ](#faq) · [Contributing](https://github.com/willuhmjs/relaypoint/blob/main/CONTRIBUTING.md)

</div>

![RelayPoint dashboard](https://raw.githubusercontent.com/willuhmjs/relaypoint/main/static/screenshots/dashboard.png)
*The dashboard: content, playlists and display groups in one place.*

RelayPoint is a self-hosted digital signage platform: upload images, videos, HTML and PowerPoint decks, arrange them into playlists, and push them to any number of displays over WebSockets.

## Features

- **Real-time broadcast**: presentations and settings reach every connected display instantly over WebSockets, with automatic reconnect and heartbeat-based client eviction
- **Rich content pipeline**: upload images, video and HTML directly, or drop in a PowerPoint file and let RelayPoint convert it to slide images (Gotenberg + Poppler), keeping the original for download
- **Playlists and transitions**: order slides, set per-slide durations and transition effects, broadcast a whole group at once
- **Display groups and teams**: organize screens into groups, manage multi-user teams with role-based access
- **Bring your own auth**: any OAuth/OIDC provider (Google, GitHub, Keycloak, custom SSO) purely through environment variables; with no IdP configured, a built-in email/password login enables itself so a fresh install works out of the box
- **Self-hostable**: Postgres + S3-compatible storage + Gotenberg, all wired up with Docker Compose

**Tech stack**: SvelteKit (Svelte 5) · TypeScript · Prisma · PostgreSQL · Tailwind CSS + shadcn-svelte · Auth.js · WebSockets · Playwright

## Quickstart

Docker Compose starts Postgres, MinIO (S3) and Gotenberg alongside the app (needs Node.js v22+ and Docker with the Compose plugin):

1. `cp .env.example .env` and set at least `POSTGRES_PASSWORD`, `S3_ACCESS_KEY` / `S3_SECRET_KEY` (any non-empty values for local use), and `AUTH_SECRET` (`openssl rand -base64 32`)
2. `docker compose up -d` — migrations run on boot; the app serves on port 3000
3. The first account you create becomes the admin. Promote someone later with `npx tsx scripts/promote-admin.ts`

With no `AUTH_PROVIDERS` configured, the local email/password login is enabled automatically and self-signup stays closed until you set `AUTH_LOCAL_ALLOW_SIGNUP="true"`.

**Local development**: `npm install`, `cp .env.example .env`, `docker compose up -d postgres s3 gotenberg`, `npx prisma migrate dev`, `npm run dev`. Checks: `npm run check` (types), `npm run lint`, `npm run test` (Playwright e2e, seeds its own user/display/session). Code layout in brief: `src/lib` (components, server logic, stores), `src/routes` (dashboard, display client, API), `prisma/`, `e2e/`, `scripts/` — the full workflow lives in [CONTRIBUTING.md](https://github.com/willuhmjs/relaypoint/blob/main/CONTRIBUTING.md).

## Configuration

All configuration is environment-driven; the full annotated list lives in [`.env.example`](https://github.com/willuhmjs/relaypoint/blob/main/.env.example). Key variables:

| Variable | Description |
|---|---|
| `ORIGIN` / `APP_URL` | Public origin of the app (callbacks and links) |
| `DATABASE_URL` | Postgres connection string |
| `AUTH_SECRET` | Auth.js signing secret (required) |
| `AUTH_PROVIDERS` | Comma-separated Auth.js provider ids, e.g. `github,google` |
| `AUTH_CUSTOM_OIDC_*` | Add a generic OIDC provider not in the Auth.js catalog |
| `AUTH_LOCAL_ALLOW_SIGNUP` | `true` to let anyone self-register locally |
| `AUTH_ADMIN_GROUP` | IdP group/role that grants the admin role on login |
| `PUBLIC_S3_ENDPOINT` / `_BUCKET_NAME` / `_REGION` | S3-compatible storage settings |
| `S3_ACCESS_KEY` / `S3_SECRET_KEY` | S3 credentials |
| `GOTENBERG_URL` | Gotenberg endpoint for PowerPoint conversion |

## Deployment

The [Dockerfile](https://github.com/willuhmjs/relaypoint/blob/main/Dockerfile) builds a production image running a custom Node server (SvelteKit plus the WebSocket layer). Run it behind a TLS-terminating reverse proxy and point `ORIGIN` / `APP_URL` at the public URL. The bucket policy in [public-policy.json](https://github.com/willuhmjs/relaypoint/blob/main/public-policy.json) grants public read to display content by design: display clients fetch slides without credentials.

## FAQ

**Do displays need accounts or logins?** No. Each display opens a public kiosk URL (`/view/<id>`) in any browser and receives its playlist from the display API.

**Where does my content live?** Entirely on your own S3-compatible bucket (MinIO included in the compose stack). Nothing is proxied through third parties.

**How do screens stay in sync?** Every slide change broadcasts over a WebSocket, and the carousel is computed from a shared timeline timestamp — clocks, not messages, are the source of truth.

**Does it work on flaky networks?** Clients reconnect with exponential backoff, cache slides in the Service Worker, and show the last published state while offline.

**Can I use it without an identity provider?** Yes — see Quickstart: local email/password login enables itself, the first account becomes admin, and self-signup stays closed unless you opt in.

## Contributing

Contributions welcome — read [CONTRIBUTING.md](https://github.com/willuhmjs/relaypoint/blob/main/CONTRIBUTING.md) first. Security issues: [SECURITY.md](https://github.com/willuhmjs/relaypoint/blob/main/SECURITY.md). Planned work: [ROADMAP.md](https://github.com/willuhmjs/relaypoint/blob/main/ROADMAP.md).

## License

[MIT](https://github.com/willuhmjs/relaypoint/blob/main/LICENSE)

<!-- Star History deferred per the skill rule: zero stars so far, the chart would be empty.
     Add once a curve forms:
     [![Star History Chart](https://api.star-history.com/svg?repos=willuhmjs/relaypoint&type=Date)](https://star-history.com/#willuhmjs/relaypoint&Date) -->
