<!-- Skill demo: the willuhmjs/linknexus README rewritten with the readme-authoring skill (v0.2.0).
     Upstream README (c) willuhmjs, MIT; quoted and modified here as a demonstration with
     attribution: https://github.com/willuhmjs/linknexus
     Every image, badge and link below was verified to resolve (HTTP 200) at write time.
     Asset accounting: all 10 portfolio-shots are used — hero plus a three-part gallery; the
     repo has no logo file, so a TODO marks where one belongs. No CI workflow exists, so the
     only badge is the (real) MIT license badge. Star History included: the chart endpoint
     resolves and a curve has started. -->

<div align="center">

<!-- TODO: add a logo (docs/logo.png) and swap the heading for it -->

# LinkNexus

**One link. Every audience.**

[![License](https://img.shields.io/github/license/willuhmjs/linknexus)](https://github.com/willuhmjs/linknexus/blob/main/LICENSE)

</div>

![The LinkNexus landing page](https://raw.githubusercontent.com/willuhmjs/linknexus/main/portfolio-shots/landing-desktop.png)
*Landing page — the single URL that holds every link that matters.*

LinkNexus is an open-source link-in-bio platform: build the one page you paste into bios, emails and flyers. Run it personally on a server you own, or host it as a multi-user SaaS.

## Features

- **Create and manage link pages** — no code: add, remove and reorder links in seconds
- **Fully self-hosted** — code and data stay on your infrastructure
- **Custom branding** — themes, colors and fonts make each page yours
- **Link scheduling** — links appear and disappear on schedule
- **Click analytics** — see which links actually perform
- **Public API** — integrate pages into your own workflows
- **Multi-user capable** — host it for others, or lock it to a single account
- **SvelteKit SSR** — fast first paint and SEO on every public page

## Screenshots

Landing page:

| | | |
|:---:|:---:|:---:|
| ![Full landing page](https://raw.githubusercontent.com/willuhmjs/linknexus/main/portfolio-shots/landing-desktop-full.png) | ![Landing on mobile](https://raw.githubusercontent.com/willuhmjs/linknexus/main/portfolio-shots/landing-mobile.png) | ![Full landing on mobile](https://raw.githubusercontent.com/willuhmjs/linknexus/main/portfolio-shots/landing-mobile-full.png) |
| Full landing page | Landing on mobile | Full landing on mobile |

Demo profiles:

| | | |
|:---:|:---:|:---:|
| ![Profile, Midnight theme](https://raw.githubusercontent.com/willuhmjs/linknexus/main/portfolio-shots/profile-desktop.png) | ![Profile, Aurora theme](https://raw.githubusercontent.com/willuhmjs/linknexus/main/portfolio-shots/profile-desktop-aurora.png) | ![Profile, Paper theme](https://raw.githubusercontent.com/willuhmjs/linknexus/main/portfolio-shots/profile-desktop-paper.png) |
| Profile — Midnight theme | Aurora theme | Paper theme |

Themes and mobile:

| | | |
|:---:|:---:|:---:|
| ![Theme close-up](https://raw.githubusercontent.com/willuhmjs/linknexus/main/portfolio-shots/themes-closeup.png) | ![Profile on mobile](https://raw.githubusercontent.com/willuhmjs/linknexus/main/portfolio-shots/profile-mobile.png) | ![Nonprofit demo profile](https://raw.githubusercontent.com/willuhmjs/linknexus/main/portfolio-shots/profile-mobile-pgsny.png) |
| Theme close-up | Profile on mobile | Nonprofit demo (pgsny) |

## Quickstart

Demo mode needs no configuration:

```sh
git clone https://github.com/willuhmjs/linknexus.git
cd linknexus
npm install
npm run dev
```

Then open the dev server (port 5173) and try:

| URL | What it shows |
|---|---|
| `/` | The landing page |
| `/willuhmjs` | The demo user's profile |
| `/demo?theme=paper` | Demo profile with the `paper` theme |
| `/pgsny` | Nonprofit example with the `pgsny` theme |

## Self-hosting

```sh
git clone https://github.com/willuhmjs/linknexus.git && cd linknexus
cp .env.example .env    # set MONGO_URL (MongoDB) and JWT_KEY
npm install
npm run build
node build
```

- **MongoDB** is the only external dependency (accessed via Mongoose)
- **Deploying**: [`railway.json`](https://github.com/willuhmjs/linknexus/blob/main/railway.json) gives one-click deploys on Railway; any Node host works
- **Single user or SaaS**: `SAAS_RAW=false` (default) runs a single-account instance; `SAAS_RAW=true` enables multi-user SaaS mode

**Tech**: SvelteKit · TypeScript · MongoDB + Mongoose · lucide icons · Inter (self-hosted)

## Status

LinkNexus is early-stage but fully demoable: the app, themes and analytics run today, and everything above is implemented. Contributions and feedback are welcome.

## License

[MIT](https://github.com/willuhmjs/linknexus/blob/main/LICENSE)

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=willuhmjs/linknexus&type=Date)](https://star-history.com/#willuhmjs/linknexus&Date)
