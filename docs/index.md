# My Fedora Workstation { #page-title }

<small>A simple script to optimize and set up a Fedora Workstation 39/40</small> { #description }

This `Shell Script` optimizes your system to my preferences, automating the installation of essential software and configurations. It saves time by performing tasks like optimizing the package manager, installing codecs, and setting up applications. With a single command, the system is ready with all necessary tools and settings, simplifying the setup process for new installations or devices.

## Credits

- **Local ISO Link**: [iHost.md](https://mirror.ihost.md/)
- **Apps**: Discord, Viber, Solanum, Blanket, VSCodium, Sticky Notes, Extension Manager, Teleprompter, Share Preview, Contrast, NewsFlash, Iotas, Apostrophe, Emblem, Lorem, Metadata Clener, Valent, Black Box, Damask, GitHub Desktop and Flashcards { #app-credits }

### Locating the ISO

<section id="cards">

- [ISO Download page](https://fedoraproject.org/workstation/download/)
- [Link to the ISO](https://download.fedoraproject.org/pub/fedora/linux/releases/39/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-39-1.5.iso)
- [Local ISO _(Moldova)_](https://mirror.ihost.md/fedora/releases/39/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-39-1.5.iso)

### Downloading BalenaEtcher

- [_Linux_](https://github.com/balena-io/etcher/releases/download/v1.18.11/balenaEtcher-1.18.11-x64.AppImage)
- [_Windows_](https://github.com/balena-io/etcher/releases/download/v1.18.11/balenaEtcher-Setup-1.18.11.exe)
- [_Mac_](https://github.com/balena-io/etcher/releases/download/v1.18.11/balenaEtcher-1.18.11.dmg)

</section>

## Installation

To download and execute the Fedora Workstation setup script, run the following command in your terminal:

```sh
curl -s https://fed.tools.gxbs.me/script | sudo sh
```

## Customization

Feel free to customize the script according to your preferences. You can modify the flags and add/remove specific steps based on your needs.

### Flag Options

- `-g`: Performs all the available flags (`-f`, `-r`, `-m`, `-a`).
- `-f`: Optimizes the package manager (`dnf`) for faster performance.
- `-r`: Adds the RPM Fusion repository, which provides additional software packages for Fedora.
- `-m`: Installs multimedia codecs for playing various media formats.
- `-a`: Installs a set of pre-defined applications, including [all the apps listed above](#app-credits).

### Usage Examples

Here are some examples of how you can use the script with different flags:

- To perform all the available optimizations and installations, run:

```sh
curl -s https://fed.tools.gxbs.me/script | sudo sh -s -g
```

- If you only want to optimize the package manager, use the `-f` flag:

```sh
curl -s https://fed.tools.gxbs.me/script | sudo sh -s -f
```

And so on...
