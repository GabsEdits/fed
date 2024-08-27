<div align="center">
  <img src="https://raw.githubusercontent.com/twitter/twemoji/d94f4cf793e6d5ca592aa00f58a88f6a4229ad43/assets/svg/1f38b.svg" width="64">
  <h1 align="center">My Fedora Linux</h1>
  <p align="center">Here you can find my Fedora installation and a <b>post-install-configuration</b> script</p>
  <small>This script is optimized for both Fedora Workstation and Asahi Remix 39/40 with GNOME.</small>
</div>

### Credits
<br> Local ISO Link: [**iHost.md**](https://mirror.ihost.md/)
<br>Apps: [Firefox[^noarm]](https://flathub.org/apps/org.mozilla.firefox), [Discord[^noarm]](https://flathub.org/apps/com.discordapp.Discord), [Viber[^noarm]](https://flathub.org/apps/com.viber.Viber), [Solanum](https://flathub.org/apps/org.gnome.Solanum), [Blanket](https://flathub.org/apps/com.rafaelmardojai.Blanket), [VSCodium](https://vscodium.com)/[VSCode](https://code.visualstudio.com/), [Sticky Notes](https://flathub.org/apps/com.vixalien.sticky), [Extension Manager](https://flathub.org/apps/com.mattjakeman.ExtensionManager), [Teleprompter](https://flathub.org/apps/io.github.nokse22.teleprompter), [Share Preview](https://flathub.org/apps/com.rafaelmardojai.SharePreview), [Contrast](https://flathub.org/apps/org.gnome.design.Contrast), [NewsFlash](https://flathub.org/apps/io.gitlab.news_flash.NewsFlash), [Iotas](https://flathub.org/apps/org.gnome.World.Iotas), [Apostrophe](https://flathub.org/apps/org.gnome.gitlab.somas.Apostrophe), [Emblem](https://flathub.org/apps/org.gnome.design.Emblem), [Lorem](https://flathub.org/apps/org.gnome.design.Lorem), [Metadata Clener](https://flathub.org/apps/fr.romainvigier.MetadataCleaner), [Valent](https://valent.andyholmes.ca/), [Black Box](https://flathub.org/apps/com.raggesilver.BlackBox), [Damask](https://flathub.org/apps/app.drey.Damask), [GitHub Desktop](https://flathub.org/apps/io.github.shiftey.Desktop) and [Memorize](https://flathub.org/apps/io.github.david_swift.Flashcards)

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
