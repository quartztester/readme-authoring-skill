<!-- Demo: sveltia/sveltia-cms-auth README rewritten with the readme-authoring skill.
     135 lines -> ~65. Facts preserved from the original; optional-variable detail
     moved behind a link to the original's config section. No logo or screenshot
     exists in the repo, so the skill's TODO-marker rule applies instead of
     invented image paths. Only one badge: the repo has no test workflow (just
     deploy.yml), so a CI badge would be false. -->

# Sveltia CMS Authenticator

**A tiny [Cloudflare Workers](https://workers.cloudflare.com/) script that lets [Sveltia CMS](https://sveltiacms.app/en/) users sign in with [GitHub](https://docs.github.com/en/apps/oauth-apps/building-oauth-apps/authorizing-oauth-apps).**

[![License](https://img.shields.io/github/license/sveltia/sveltia-cms-auth)](LICENSE.txt)

<!-- TODO: add a logo at docs/logo.png -->
<!-- TODO: add a screenshot of the Sveltia CMS sign-in dialog at docs/screenshot-login.png -->

> [!IMPORTANT]
> **In most cases, you don't need this.** Sveltia CMS supports several authentication methods for GitHub and GitLab, so check those first. Works with Decap CMS too, but it's built for Sveltia CMS instances.

## When you need it

You need this authenticator only if your CMS users are **non-technical** and your backend is **GitHub**: it gives them a normal sign-in button instead of making them create and manage personal access tokens.

You don't need it if you're migrating from Netlify or Decap CMS (keep your existing OAuth client), if your users are technical (use the [access token method](https://sveltiacms.app/en/docs/backends/github#access-token)), or if you're on GitLab (GitLab support here is only for completeness; use [client-side PKCE authorization](https://sveltiacms.app/en/docs/backends/gitlab#pkce-authorization) instead).

## Quick start

1. **Deploy** — click the button, or clone the repo and run `wrangler deploy`:

   [![Deploy to Cloudflare Workers](https://deploy.workers.cloudflare.com/button)](https://deploy.workers.cloudflare.com/?url=https://github.com/sveltia/sveltia-cms-auth)

   Copy the Worker URL (`https://sveltia-cms-auth.<SUBDOMAIN>.workers.dev`) from the dashboard for steps 2 and 4.

2. **Register an OAuth app** on [GitHub](https://github.com/settings/applications/new) or [GitLab](https://gitlab.com/-/user_settings/applications) with the authorization callback URL `<YOUR_WORKER_URL>/callback`. Keep the client ID and secret.

3. **Set the Worker's variables** (dashboard → your Worker → Settings → Variables):

   | Variable | For | Value |
   |---|---|---|
   | `GITHUB_CLIENT_ID` | GitHub | Client ID from step 2 |
   | `GITHUB_CLIENT_SECRET` | GitHub | Client secret from step 2 |
   | `GITLAB_CLIENT_ID` | GitLab | Application ID from step 2 |
   | `GITLAB_CLIENT_SECRET` | GitLab | Secret from step 2 |
   | `ALLOWED_DOMAINS` | Recommended | Your site's hostname, e.g. `www.example.com` |

   `ALLOWED_DOMAINS` stops other sites from using your Worker at your expense and from obtaining tokens through it, so setting it is strongly recommended. Wildcards, multiple domains, and GitHub Enterprise hostnames: see the [full variable reference](https://github.com/sveltia/sveltia-cms-auth#step-3-configure-the-worker).

4. **Point your CMS at it** — in `admin/config.yml`:

   ```diff
    backend:
      name: github # or gitlab
      repo: username/repo
      branch: main
   +  base_url: <YOUR_WORKER_URL>
   ```

Commit, deploy, and sign in.

## FAQ

**Why do I have to host this myself?** Running it as a shared service would carry legal, privacy and security liabilities that a personal project can't afford.

## Acknowledgements

Inspired by [`netlify-cms-oauth-firebase`](https://github.com/Herohtar/netlify-cms-oauth-firebase).

## License

[MIT](LICENSE.txt)

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=sveltia/sveltia-cms-auth&type=Date)](https://star-history.com/#sveltia/sveltia-cms-auth&Date)
