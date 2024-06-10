# My Fedora Linux { #page-title }

<small>An efficient script to optimize Fedora Workstation and Asahi Remix 39/40 with GNOME.</small> { #description }

This `Shell Script` optimizes your system to my preferences, automating the installation of essential software and configurations. It saves time by performing tasks like optimizing the package manager, installing codecs, and setting up applications. With a single command, the system is ready with all necessary tools and settings, simplifying the setup process for new installations or devices.

## Credits

- **Local ISO Link**: [iHost.md](https://mirror.ihost.md/)
- **Apps**: Firefox[*](#notes), Discord[*](#notes), Viber[*](#notes), Solanum, Blanket, VSCodium/VSCode, Sticky Notes, Extension Manager, Teleprompter, Share Preview, Contrast, NewsFlash, Iotas, Apostrophe, Emblem, Lorem, Metadata Clener, Valent, Black Box, Damask, GitHub Desktop and Flashcards { #app-credits }

**\*** = Only for `x86_64`, not `aarch64` { #notes }

### Locating the ISO

<section id="cards">

- [ISO Download page](https://fedoraproject.org/workstation/download/)
- [Link to the ISO](https://download.fedoraproject.org/pub/fedora/linux/releases/40/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-40-1.14.iso)
- [Local ISO _(Moldova)_](https://mirror.ihost.md/fedora/releases/39/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-39-1.5.iso)

### Downloading BalenaEtcher

- [_Linux (AppImage)_](https://github.com/balena-io/etcher/releases/download/v1.18.11/balenaEtcher-1.18.11-x64.AppImage)
- [_Windows_](https://github.com/balena-io/etcher/releases/download/v1.18.11/balenaEtcher-Setup-1.18.11.exe)
- [_MacOS_](https://github.com/balena-io/etcher/releases/download/v1.18.11/balenaEtcher-1.18.11.dmg)

</section>

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
