# LinkNexus

**One link. Every audience.**

LinkNexus is an open-source, link-in-bio platform: create and manage your own social
media reference landing page — the single URL you paste in bios, emails and flyers that
holds every link that matters. Run it personally on a server you own, or operate it as a
multi-user SaaS.

![LinkNexus landing page](portfolio-shots/landing-desktop.png)

## Features

- **A gorgeous public page at `/{username}`** — avatar, bio, animated link cards, social
  row and a live view counter, rendered fast from a SvelteKit SSR build.
- **Real theming, not three templates** — six curated presets (Midnight, Aurora, Ember,
  Forest, Paper, Slate) plus a live color picker for exact backgrounds, cards, borders and
  gradients. Preview any theme on the demo profile with `?theme=aurora`.
- **Two layouts** — classic stacked list or a visual grid for image-heavy links.
- **Analytics** — per-page view counter plus optional Google Analytics tie-in.
- **QR codes** — hand a phone to someone, or print your page on a bulletin sheet.
- **Custom domains** — serve your page from `links.yourorg.org` (SaaS) or any host you
  control (self-hosted).
- **Zero lock-in** — the SaaS and the self-hosted install are the same codebase. Your
  data lives in your MongoDB and exports trivially.
- **Zero-config demo mode** — clone, `npm install`, `npm run dev`. With no `.env`, the
  landing page and demo profiles (`/willuhmjs`, `/pgsny`, `/demo`) render from in-repo
  fixture data; nothing touches a database.

## Quickstart

```bash
npm install
npm run dev        # http://localhost:5173 — runs in DEMO mode, no database needed
```

Open:

| URL | What you get |
| --- | --- |
| `/` | Marketing landing page |
| `/willuhmjs` | Demo profile (Midnight theme) |
| `/demo?theme=paper` | Demo profile in any theme: `midnight`, `aurora`, `ember`, `forest`, `paper`, `slate` |
| `/pgsny` | Demo profile for a fictional nonprofit organization |

## Self-hosting

Full mode adds the dashboard (`/admin`), auth, per-user theming and analytics on top of
MongoDB:

```bash
cp .env.example .env       # set MONGO_URL and JWT_KEY
npm install
npm run build
node build                 # or: npm start
```

One Node process, one MongoDB. `railway.json` is included for one-click Railway
deploys; any VPS/container platform works the same way. Set `SAAS_RAW=false` for a
single-user install where `/` serves your own profile instead of the marketing page.

## Tech

SvelteKit · TypeScript · Svelte · MongoDB + Mongoose · lucide icons · Inter
(@fontsource, self-hosted) · MIT licensed.

## Status

Early stage but fully demoable: public profile pages, theming, layouts and the marketing
site are polished; the admin dashboard exists but needs design love, and QR/custom-domain
provisioning are the next build-out. The demo surfaces are what a link-in-bio product
feels like when it's finished — start there.
