<!-- Skill demo: the openrazer/openrazer README rewritten with the readme-authoring skill.
     Upstream README (c) OpenRazer contributors, GPL-2.0-or-later: https://github.com/openrazer/openrazer
     Every image, badge and link below was verified to resolve (HTTP 200) at write time.
     Asset accounting: logo/openrazer-chroma.svg (banner) · website img/header.jpg (hero photo) ·
     img/chroma.png (devices mark) · img/distros/*.svg x13 (install icons) · img/apps/* (frontend icons) ·
     img/social/matrix.svg (community icon). logo/openrazer-static.svg and img/logo.svg are the same
     wordmark in monochrome form (the site navbar variant), not duplicated inline; favicon.ico and
     img/placeholder.png are internal site files. -->

<div align="center">

<a href="https://openrazer.github.io/">
  <img src="https://raw.githubusercontent.com/openrazer/openrazer/master/logo/openrazer-chroma.svg" alt="OpenRazer logo" width="260">
</a>

# OpenRazer

**Open-source drivers and a daemon for Razer peripherals on Linux. Control lighting and device settings from your own desktop, no Razer account or cloud required.**

[![License](https://img.shields.io/github/license/openrazer/openrazer)](https://github.com/openrazer/openrazer/blob/master/LICENSES/GPL-2.0-or-later.txt)
[![Release](https://img.shields.io/github/v/release/openrazer/openrazer)](https://github.com/openrazer/openrazer/releases/latest)
[![Downloads](https://img.shields.io/github/downloads/openrazer/openrazer/total)](https://github.com/openrazer/openrazer/releases)
[![Matrix](https://img.shields.io/matrix/openrazer:matrix.org.svg)](https://matrix.to/#/#openrazer:matrix.org)

[Website](https://openrazer.github.io/) · [Supported devices](https://openrazer.github.io/#devices) · [Troubleshooting](https://github.com/openrazer/openrazer/wiki/Troubleshooting) · [Telegram](https://t.me/joinchat/AMhHjj9Txhkhn8JM5_LeMg) · [Mastodon](https://fosstodon.org/@openrazer)

</div>

<img src="https://raw.githubusercontent.com/openrazer/openrazer.github.io/main/img/header.jpg" alt="Razer keyboard lit up with Chroma RGB effects">

## What OpenRazer gives you

- Lighting and device settings for **274 Razer products**: keyboards, mice, headsets, mousemats and accessories
- Chroma lighting effects, set per device and per zone, straight from Linux
- Settings persist on the hardware itself: they survive power cycles and computers without the driver*
- A DBus daemon plus a Python library, so you can script your gear or build your own frontend
- Everything runs locally on your machine: no account, no cloud service

\* Not supported by all hardware. Using the device on a computer running Razer Synapse resets this state.

> [!NOTE]
> Secure Boot can stop the kernel driver from loading. If something does not work, the [Troubleshooting wiki page](https://github.com/openrazer/openrazer/wiki/Troubleshooting) covers kernel modules and Secure Boot.

## Install

**1. Install the package for your distribution** — full instructions on the [website](https://openrazer.github.io/):

Official packages:

| | | | | |
|---|---|---|---|---|
| <a href="https://openrazer.github.io/#debian"><img src="https://raw.githubusercontent.com/openrazer/openrazer.github.io/main/img/distros/debian.svg" width="44" alt="Debian"><br>Debian</a> | <a href="https://openrazer.github.io/#fedora"><img src="https://raw.githubusercontent.com/openrazer/openrazer.github.io/main/img/distros/fedora.svg" width="44" alt="Fedora"><br>Fedora</a> | <a href="https://openrazer.github.io/#mageia"><img src="https://raw.githubusercontent.com/openrazer/openrazer.github.io/main/img/distros/mageia.svg" width="44" alt="Mageia"><br>Mageia</a> | <a href="https://openrazer.github.io/#opensuse"><img src="https://raw.githubusercontent.com/openrazer/openrazer.github.io/main/img/distros/opensuse.svg" width="44" alt="openSUSE"><br>openSUSE</a> | <a href="https://openrazer.github.io/#ubuntu"><img src="https://raw.githubusercontent.com/openrazer/openrazer.github.io/main/img/distros/ubuntu.svg" width="44" alt="Ubuntu"><br>Ubuntu</a> |

Community packages:

| | | | |
|---|---|---|---|
| <a href="https://openrazer.github.io/#alpine"><img src="https://raw.githubusercontent.com/openrazer/openrazer.github.io/main/img/distros/alpine.svg" width="44" alt="Alpine"><br>Alpine</a> | <a href="https://openrazer.github.io/#arch"><img src="https://raw.githubusercontent.com/openrazer/openrazer.github.io/main/img/distros/arch.svg" width="44" alt="Arch"><br>Arch</a> | <a href="https://openrazer.github.io/#gentoo"><img src="https://raw.githubusercontent.com/openrazer/openrazer.github.io/main/img/distros/gentoo.svg" width="44" alt="Gentoo"><br>Gentoo</a> | <a href="https://openrazer.github.io/#nixos"><img src="https://raw.githubusercontent.com/openrazer/openrazer.github.io/main/img/distros/nixos.svg" width="44" alt="NixOS"><br>NixOS</a> |
| <a href="https://openrazer.github.io/#slackware"><img src="https://raw.githubusercontent.com/openrazer/openrazer.github.io/main/img/distros/slackware.svg" width="44" alt="Slackware"><br>Slackware</a> | <a href="https://openrazer.github.io/#solus"><img src="https://raw.githubusercontent.com/openrazer/openrazer.github.io/main/img/distros/solus.svg" width="44" alt="Solus"><br>Solus</a> | <a href="https://openrazer.github.io/#steamos"><img src="https://raw.githubusercontent.com/openrazer/openrazer.github.io/main/img/distros/steamos.svg" width="44" alt="SteamOS"><br>SteamOS</a> | <a href="https://openrazer.github.io/#voidlinux"><img src="https://raw.githubusercontent.com/openrazer/openrazer.github.io/main/img/distros/voidlinux.svg" width="44" alt="Void Linux"><br>Void Linux</a> |

**2. Add yourself to the `plugdev` group** so your user can talk to the daemon (most distributions; Arch uses the `openrazer` group instead):

```bash
sudo gpasswd -a $USER plugdev
```

Then log out and back in so the driver and group permissions take effect.

**3. Pick a frontend** from the list below for a point-and-click interface, or drive the daemon from Python.

## GUI frontends

OpenRazer is the driver layer; these apps sit on top of it:

| | App | What it is |
|---|---|---|
| <img src="https://raw.githubusercontent.com/openrazer/openrazer.github.io/main/img/apps/polychromatic.svg" width="30" alt=""> | **[Polychromatic](https://polychromatic.app/)** | Graphical management tool and tray applet |
| <img src="https://raw.githubusercontent.com/openrazer/openrazer.github.io/main/img/apps/github.svg" width="30" alt=""> | **[RazerGenie](https://github.com/z3ntu/RazerGenie)** | Qt app for configuring your Razer devices |
| <img src="https://raw.githubusercontent.com/openrazer/openrazer.github.io/main/img/apps/razerCommander.png" width="30" alt=""> | **[razerCommander](https://gitlab.com/gabmus/razerCommander)** | Simple GUI written in GTK3 |
| <img src="https://raw.githubusercontent.com/openrazer/openrazer.github.io/main/img/apps/snake.png" width="30" alt=""> | **[Snake](http://bithatch.co.uk/snake.html)** | Stylised tool and tray applet, written in Java |
| <img src="https://raw.githubusercontent.com/openrazer/openrazer.github.io/main/img/apps/RazerBatteryTray.png" width="30" alt=""> | **[RazerBatteryTray](https://github.com/HoroTW/RazerBatteryTray)** | Tray icon with wireless device battery levels |
| <img src="https://raw.githubusercontent.com/openrazer/openrazer.github.io/main/img/apps/input-remapper.svg" width="30" alt=""> | **[Input Remapper](https://github.com/sezanzeb/input-remapper)** | Key and button remapping (needed for key rebinding) |
| | **[Chroma Feedback](https://github.com/henryruhs/chroma-feedback)** | Turn your RGB hardware into a CI/CD and infrastructure status indicator |

## Supported devices

<div align="center">
  <img src="https://raw.githubusercontent.com/openrazer/openrazer.github.io/main/img/chroma.png" alt="OpenRazer snake over a rainbow-lit key grid" width="130">
</div>

**274 devices** are fully supported today: 115 keyboards, 117 mice, 8 headsets, 8 mousemats and 26 accessories. The `master` branch gains the newest devices first; the [stable branch](https://github.com/openrazer/openrazer/tree/stable) shows what ships in your distribution's package.

To check yours, find its USB ID:

```bash
lsusb | grep '1532:'
```

then match it against the [device list on the website](https://openrazer.github.io/#devices).

## For developers

The daemon exposes a DBus interface, [pylib](https://github.com/openrazer/openrazer/tree/master/pylib) ships the Python bindings, and [examples](https://github.com/openrazer/openrazer/tree/master/examples) has small scripts to start from. To build from source, see [DEVELOPMENT.md](https://github.com/openrazer/openrazer/blob/master/DEVELOPMENT.md).

## Something not working?

Try the [Troubleshooting wiki page](https://github.com/openrazer/openrazer/wiki/Troubleshooting) first. If it does not pinpoint the problem, [search the open and closed issues](https://github.com/openrazer/openrazer/issues?q=is%3Aissue+) before creating a new one.

## Community

[<img src="https://raw.githubusercontent.com/openrazer/openrazer.github.io/main/img/social/matrix.svg" width="16" alt="">](https://matrix.to/#/#openrazer:matrix.org)&nbsp;[#openrazer:matrix.org](https://matrix.to/#/#openrazer:matrix.org) · [Telegram group](https://t.me/joinchat/AMhHjj9Txhkhn8JM5_LeMg) · [@openrazer@fosstodon.org](https://fosstodon.org/@openrazer) · [Issue tracker](https://github.com/openrazer/openrazer/issues)

Brought to you by [Luca Weiss](https://github.com/z3ntu), plus the help of many [contributors](https://github.com/openrazer/openrazer/graphs/contributors) and testers.

## License

Code is [GPL-2.0-or-later](https://github.com/openrazer/openrazer/blob/master/LICENSES/GPL-2.0-or-later.txt); the logo is [CC-BY-SA-4.0](https://github.com/openrazer/openrazer/blob/master/LICENSES/CC-BY-SA-4.0.txt). The project is not affiliated with [Razer, Inc](https://www.razerzone.com/).

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=openrazer/openrazer&type=Date)](https://star-history.com/#openrazer/openrazer&Date)
