---
home: true
---

A simple yet useful `Shell Script` that optimizes your system based on my prefrences. Also helps me to install everything I need for an new install.

### Credits
Apx: Thanks to [@spaceguybob](https://github.com/spaceguybob/) for making the `apx-install`
<br> Local ISO Link: [**iHost.md**](https://mirror.ihost.md/)
<br>Apps: Discord, Viber, Solanum, Blanket, VSCondium and BalenaEtcher</br>
### Find ISO
* ISO page: [/workstation/download/](https://fedoraproject.org/workstation/download/)
* ISO itself: [**/x86_64/live/.iso**](https://download.fedoraproject.org/pub/fedora/linux/releases/39/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-39-1.5.iso)
* Local ISO (Moldova): [/releases/39/Workstation/x86_64/.iso](https://mirror.ihost.md/fedora/releases/39/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-39-1.5.iso)
### BalenaEtcher 
* Linux: [**Download**](https://github.com/balena-io/etcher/releases/download/v1.18.11/balenaEtcher-1.18.11-x64.AppImage)
* Windows: [Download](https://github.com/balena-io/etcher/releases/download/v1.18.11/balenaEtcher-Setup-1.18.11.exe)
* Mac: [Download](https://github.com/balena-io/etcher/releases/download/v1.18.11/balenaEtcher-1.18.11.dmg)

## Install
```sh
git clone https://github.com/GabsEdits/fed/ && cd fed
```
```sh
sudo sh script.sh
```

## Usage
```
    Usage: script.sh [-g|-f|-r|-m|-a|-x]
-g    Do all flags (f,r,m,a)
-f    Make dnf faster
-r    Add RPM Fusion
-m    Add Multimedia Codecs
-a    Install apps
-x    Add Apx *don't run with root*
```

## Source Code

The projects is open source and can be found on my GitHub profile at [`GabsEdits/fed`](https://github.com/GabsEdits/fed)