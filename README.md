<div align="center">
  <img src="https://raw.githubusercontent.com/twitter/twemoji/d94f4cf793e6d5ca592aa00f58a88f6a4229ad43/assets/svg/1f38b.svg" width="64">
  <h1 align="center">My Fedora Linux</h1>
  <p align="center">Here you can find my Fedora installation and a <b>post-install-configuration</b> script</p>
  <small>This script is optimized for both Fedora Workstation and Asahi Remix 39/40 with GNOME.</small>
</div>
  
### Credits
<br> Local ISO Link: [**iHost.md**](https://mirror.ihost.md/)
<br>Apps: Discord*, Viber*, Solanum, Blanket, VSCodium/VSCode, Sticky Notes, Extension Manager, Teleprompter, Share Preview, Contrast, NewsFlash, Iotas, Apostrophe, Emblem, Lorem, Metadata Clener, Valent, Black Box, Damask, GitHub Desktop and Flashcards

**\*** = Only for `x86_64`, not `aarch64`

### Find ISO

- ISO page: [/workstation/download/](https://fedoraproject.org/workstation/download/)
- ISO itself: [**/x86_64/live/.iso**](https://download.fedoraproject.org/pub/fedora/linux/releases/39/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-39-1.5.iso)
- Local ISO (Moldova): [/releases/39/Workstation/x86_64/.iso](https://mirror.ihost.md/fedora/releases/39/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-39-1.5.iso)

### BalenaEtcher

- Linux (AppImage): [**Download**](https://github.com/balena-io/etcher/releases/download/v1.18.11/balenaEtcher-1.18.11-x64.AppImage)
- Windows: [Download](https://github.com/balena-io/etcher/releases/download/v1.18.11/balenaEtcher-Setup-1.18.11.exe)
- MacOS: [Download](https://github.com/balena-io/etcher/releases/download/v1.18.11/balenaEtcher-1.18.11.dmg)

## Installation

To download and execute the Fedora Workstation setup script, run the following command in your terminal:

```sh
curl -O https://fed.tools.gxbs.me/script && sudo sh ./script
```

## Customization

When running the script, you can specify the flags to customize the installation process. Here are some examples:

```sh
Usage: [0-4]
  0    Do all options (1-4)
  1    Make dnf faster
  2    Add RPM Fusion
  3    Add Multimedia Codecs
  4    Install apps
```

<div align="center">
  <sup> Thanks for checking out my project 👋</sup>
