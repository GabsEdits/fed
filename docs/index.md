# My Fedora Linux { #page-title }

<small>An efficient script to optimize Fedora Workstation and Asahi Remix 39/40 with GNOME.</small> { #description }

This Shell Script optimizes your system to my preferences, automating the installation of essential software and configurations. It saves time by performing tasks like optimizing the package manager, installing codecs, and setting up applications. With a single command, the system is ready with all necessary tools and settings, simplifying the setup process for new installations or devices.

## Credits

- **Local ISO Link**: [iHost.md](https://mirror.ihost.md/)
- **Apps**: [Firefox[^noarm]](https://flathub.org/apps/org.mozilla.firefox), [Discord[^noarm]](https://flathub.org/apps/com.discordapp.Discord), [Viber[^noarm]](https://flathub.org/apps/com.viber.Viber), [Solanum](https://flathub.org/apps/org.gnome.Solanum), [Blanket](https://flathub.org/apps/com.rafaelmardojai.Blanket), [VSCodium](https://vscodium.com)/[VSCode](https://code.visualstudio.com/), [Sticky Notes](https://flathub.org/apps/com.vixalien.sticky), [Extension Manager](https://flathub.org/apps/com.mattjakeman.ExtensionManager), [Teleprompter](https://flathub.org/apps/io.github.nokse22.teleprompter), [Share Preview](https://flathub.org/apps/com.rafaelmardojai.SharePreview), [Contrast](https://flathub.org/apps/org.gnome.design.Contrast), [NewsFlash](https://flathub.org/apps/io.gitlab.news_flash.NewsFlash), [Iotas](https://flathub.org/apps/org.gnome.World.Iotas), [Apostrophe](https://flathub.org/apps/org.gnome.gitlab.somas.Apostrophe), [Emblem](https://flathub.org/apps/org.gnome.design.Emblem), [Lorem](https://flathub.org/apps/org.gnome.design.Lorem), [Metadata Clener](https://flathub.org/apps/fr.romainvigier.MetadataCleaner), [Valent](https://valent.andyholmes.ca/), [Black Box](https://flathub.org/apps/com.raggesilver.BlackBox), [Damask](https://flathub.org/apps/app.drey.Damask), [GitHub Desktop](https://flathub.org/apps/io.github.shiftey.Desktop) and Flashcards { #app-credits }

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

[^noarm]: Only for `x86_64`, not `aarch64`
