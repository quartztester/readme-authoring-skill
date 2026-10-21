<!-- Skill demo: the umputun/remark42 README rewritten with the readme-authoring skill.
     Upstream README (c) umputun and remark42 contributors, MIT; quoted and modified here as a
     demonstration with attribution: https://github.com/umputun/remark42
     Every image, badge and link below was verified to resolve (HTTP 200) at write time.
     Asset accounting: every README-suitable image in the repo is used (screenshots/comments.png as
     hero, the site logo icon, and the 4 admin-interface + 2 email screenshots from site/content/docs/).
     Site favicons beyond the logo icon and code/test assets are not README assets.
     Changes vs upstream: the screenshot uncollapsed from <details> to the hero slot; the 22-bullet
     feature list compressed to 8 benefit bullets; Install, License and Star History sections added;
     the legacy-format Build badge (workflows/build/badge.svg, predating the current workflow names)
     replaced with the canonical ci-backend badge; Go Report Card and coverage badges dropped as
     maintainer-facing. The sparse->landing-page direction: upstream keeps all depth on
     remark42.com, and the rewrite keeps it there too, behind links. -->

<div align="center">

<img src="https://raw.githubusercontent.com/umputun/remark42/master/site/static/android-chrome-512x512.png" alt="Remark42 logo" width="120">

# Remark42

**A self-hosted, lightweight comment engine that doesn't spy on users. Embed it into blogs, articles, or anywhere readers comment: one Docker container, no external database, all data on your server.**

[![CI](https://github.com/umputun/remark42/actions/workflows/ci-backend.yml/badge.svg)](https://github.com/umputun/remark42/actions/workflows/ci-backend.yml)
[![Docker Pulls](https://img.shields.io/docker/pulls/umputun/remark42)](https://hub.docker.com/r/umputun/remark42)
[![Release](https://img.shields.io/github/v/release/umputun/remark42)](https://github.com/umputun/remark42/releases/latest)
[![License](https://img.shields.io/github/license/umputun/remark42)](https://github.com/umputun/remark42/blob/master/LICENSE)

</div>

![Embedded comments](https://raw.githubusercontent.com/umputun/remark42/master/screenshots/comments.png)
*Embedded comments with the formatter toolbar, voting and threading.*

## Features

- **Privacy focused**: self-hosted, no tracking, no ads; every comment stays in a single data file on your server ([privacy statement](https://remark42.com/#privacy))
- **Sign in your way**: Google, GitHub, Apple, Microsoft, Facebook, Yandex, Patreon, Discord, Telegram, custom OAuth2, email, or anonymous
- **Comments that feel native**: Markdown with a friendly toolbar, tree or plain view, drag-and-drop images, light and dark themes
- **Moderation built in**: remove comments, block users, pin and verify; admins get notified via Telegram, Slack, webhook or email
- **Readers come back**: voting, replies, recent-comments and counter widgets, RSS per post, user notifications by email or Telegram
- **Your data stays yours**: import from Disqus and WordPress, export to JSON, automatic backups
- **One instance, many sites**: multi-site mode from a single Remark42
- **Runs anywhere**: a single binary on Linux, Windows and macOS, or Docker with automatic SSL

Try every auth method, including email and anonymous access, on the [demo site](https://remark42.com/demo/).

## Screenshots

**Admin interface** ([docs](https://remark42.com/docs/manuals/admin-interface/))

| | | |
|---|---|---|
| <img src="https://raw.githubusercontent.com/umputun/remark42/master/site/content/docs/manuals/admin-interface/images/admin-primary.png" width="280" alt="Admin UI"><br>*List and manage comments* | <img src="https://raw.githubusercontent.com/umputun/remark42/master/site/content/docs/manuals/admin-interface/images/admin-delete.png" width="280" alt="Admin delete"><br>*Delete comments* | <img src="https://raw.githubusercontent.com/umputun/remark42/master/site/content/docs/manuals/admin-interface/images/admin-blocking.png" width="280" alt="Admin blocking"><br>*Block users* |
| <img src="https://raw.githubusercontent.com/umputun/remark42/master/site/content/docs/manuals/admin-interface/images/admin-settings.png" width="280" alt="Admin settings"><br>*Instance settings* | | |

**Email sign-in and notifications** ([docs](https://remark42.com/docs/configuration/email/))

| | | |
|---|---|---|
| <img src="https://raw.githubusercontent.com/umputun/remark42/master/site/content/docs/configuration/email/images/email_auth.png" width="280" alt="Email auth"><br>*Email sign-in* | <img src="https://raw.githubusercontent.com/umputun/remark42/master/site/content/docs/configuration/email/images/email_notifications.png" width="280" alt="Email notifications"><br>*User notification settings* | |

## Install

**Docker (recommended):**

1. Copy [docker-compose.yml](https://github.com/umputun/remark42/blob/master/docker-compose.yml) and customize it; set `ADMIN_PASSWD` for any non-development deployment
2. Pull the prepared image and start:

```bash
docker compose pull && docker compose up -d
```

A single self-contained binary for Linux, Windows and macOS is also provided; see the full [installation guide](https://remark42.com/docs/getting-started/installation/).

**Embed on your site:**

```html
<script>
	var remark_config = {
		host: "https://demo.remark42.com",
		site_id: "remark",
	}
</script>
<script>!function(e,n){for(var o=0;o<e.length;o++){var r=n.createElement("script"),d=n.head||n.body;r.type="module",r.async=!0,r.defer=!0,r.src=remark_config.host+"/web/"+e[o]+".mjs",d.appendChild(r)}}(remark_config.components||["embed"],document);</script>
<div id="remark42">Comments loading...</div>
```

Point `host` at your instance and set `site_id`. All embed options: [frontend configuration](https://remark42.com/docs/configuration/frontend/).

## Documentation

Everything lives on [remark42.com/docs](https://remark42.com/docs/): [backend parameters](https://remark42.com/docs/configuration/parameters/), [frontend embed](https://remark42.com/docs/configuration/frontend/), [authorization](https://remark42.com/docs/configuration/authorization/), [backup and migration](https://remark42.com/docs/backup/), [API](https://remark42.com/docs/contributing/api/) and more.

## Related projects

- [Helm chart for Remark42 on Kubernetes](https://github.com/groundhog2k/helm-charts/tree/master/charts/remark42)
- [django-remark42](https://github.com/andrewp-as-is/django-remark42.py)

## Contributing

- [Backend development guide](https://remark42.com/docs/contributing/backend/)
- [Frontend development guide](https://remark42.com/docs/contributing/frontend/)
- [Adding a localization](https://remark42.com/docs/contributing/translations/)

## License

[MIT](https://github.com/umputun/remark42/blob/master/LICENSE), © [umputun](https://github.com/umputun) and contributors.

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=umputun/remark42&type=Date)](https://star-history.com/#umputun/remark42&Date)
