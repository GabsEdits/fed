<div align="center">
  <img src="https://raw.githubusercontent.com/twitter/twemoji/d94f4cf793e6d5ca592aa00f58a88f6a4229ad43/assets/svg/1f38b.svg" width="64">
  <h1 align="center">My Fedora Workstation</h1>
  <p align="center">Here you can find my Fedora installation and a <b>post-install-configuration</b> script</p>
  <small>This script was optimized for Fedora 38-40 Workstation Edition</small>
</div>
  
### Credits
Apx: Thanks to [@spaceguybob](https://github.com/spaceguybob/) for making the `apx-install`
<br> Local ISO Link: [**iHost.md**](https://mirror.ihost.md/)
<br>Apps: Discord, Viber, Solanum, Blanket, VSCodium, Sticky Notes, Extension Manager, Teleprompter, Share Preview, Contrast, NewsFlash, Iotas, Apostrophe, Emblem, Lorem, Metadata Clener, Valent, Black Box, Damask, GitHub Desktop and Flashcards

### Find ISO

- ISO page: [/workstation/download/](https://fedoraproject.org/workstation/download/)
- ISO itself: [**/x86_64/live/.iso**](https://download.fedoraproject.org/pub/fedora/linux/releases/39/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-39-1.5.iso)
- Local ISO (Moldova): [/releases/39/Workstation/x86_64/.iso](https://mirror.ihost.md/fedora/releases/39/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-39-1.5.iso)

### BalenaEtcher

- Linux: [**Download**](https://github.com/balena-io/etcher/releases/download/v1.18.11/balenaEtcher-1.18.11-x64.AppImage)
- Windows: [Download](https://github.com/balena-io/etcher/releases/download/v1.18.11/balenaEtcher-Setup-1.18.11.exe)
- Mac: [Download](https://github.com/balena-io/etcher/releases/download/v1.18.11/balenaEtcher-1.18.11.dmg)

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
- `-a`: Installs a set of pre-defined applications, including Discord, Viber, Solanum, Blanket, VSCodium, Sticky Notes, Extension Manager, Teleprompter, Share Preview, Contrast, NewsFlash, Iotas, Apostrophe, Emblem, Lorem, Metadata Clener, Valent, Black Box, Damask, GitHub Desktop and Flashcards.

### Usage Examples

Here are some examples of how you can use the script with different flags:

- To perform all the available optimizations and installations, run:

```sh
sudo sh script.sh -g
```

- If you only want to optimize the package manager, use the `-f` flag:

```sh
sudo sh script.sh -f
```

- To add the RPM Fusion repository, use the `-r` flag:

```sh
sudo sh script.sh -r
```

- If you need multimedia codecs, use the `-m` flag:

```sh
sudo sh script.sh -m
```

- To install the predefined set of applications, use the `-a` flag:

```sh
sudo sh script.sh -a
```

<div align="center">
  <sup> Thanks for checking out my project 👋</sup>
