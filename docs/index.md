# My Fedora Workstation { #page-title }

A simple yet useful `Shell Script` that optimizes your system based on my preferences. It automates the installation of essential software and configurations, making it easier for me to set up a new system. This script saves me time and effort by performing tasks such as optimizing the package manager, installing multimedia codecs, and installing a set of applications. With just a command, I can have my system ready with all the necessary tools and settings. It's a convenient solution that ensures a smooth and efficient setup process, allowing me to focus on my work without worrying about manual configurations. Whether it's a fresh reinstallation or setting up a new device, this script simplifies the setup process and ensures that my system is optimized and ready to use. 

## Credits

- **Local ISO Link**: [**iHost.md**](https://mirror.ihost.md/)
- **Apps**: Discord, Viber, Solanum, Blanket, VSCodium, Sticky Notes, Extension Manager, Teleprompter, Share Preview, Contrast, NewsFlash, Iotas, Apostrophe, Emblem, Lorem, Metadata Clener, Valent, Black Box, Damask, GitHub Desktop and Flashcards

### Locating the ISO

<section id="cards">

- [**ISO Download page**](https://fedoraproject.org/workstation/download/)
- [**Link to the ISO**](https://download.fedoraproject.org/pub/fedora/linux/releases/39/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-39-1.5.iso)
- [**Local ISO** *(Moldova)*](https://mirror.ihost.md/fedora/releases/39/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-39-1.5.iso)

### Downloading BalenaEtcher 

- [*Linux*](https://github.com/balena-io/etcher/releases/download/v1.18.11/balenaEtcher-1.18.11-x64.AppImage)
- [*Windows*](https://github.com/balena-io/etcher/releases/download/v1.18.11/balenaEtcher-Setup-1.18.11.exe)
- [*Mac*](https://github.com/balena-io/etcher/releases/download/v1.18.11/balenaEtcher-1.18.11.dmg)

</section>

## Installation

To install the Fedora Workstation setup script, follow these steps:

1. Clone the repository & open the cloned folder:
```sh
git clone https://github.com/GabsEdits/fed/ && cd fed
```
2. Run the shelll script:
```sh
sudo sh script.sh
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