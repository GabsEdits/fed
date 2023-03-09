<div align="center">
  
  # My Fedora Workstation 🎋
Here you can find my Fedora installation and a **post-install-configuration** script

<sup>This script works the best with the supported Fedora Workstation releases (36,37,38 and Rawhide)</sup>
  </div>
  
### Credits
Apx: Thanks to [@spaceguybob](https://github.com/spaceguybob/) for making the `apx-install`
<br>Theme: [**Adw-gtk3**](https://github.com/lassekongo83/adw-gtk3)
<br> Local ISO Link: [**iHost.md**](https://mirror.ihost.md/)
<br>Apps: Discord, Viber, IntelliJ Idea and BalenaEtcher</br>
### Find ISO
* ISO page: [/workstation/download/](https://getfedora.org/en/workstation/download/)
* ISO page (beta): [/workstation/](https://stg.fedoraproject.org/workstation/)
* ISO itself: [**/x86_64/live/.iso**](https://download.fedoraproject.org/pub/fedora/linux/releases/37/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-37-1.7.iso)
* Local ISO (Moldova): [/releases/37/Workstation/x86_64/.iso](https://mirror.ihost.md/fedora/releases/37/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-37-1.7.iso)
### BalenaEtcher 
* Linux: [**Download**](https://github.com/balena-io/etcher/releases/download/v1.18.4/balenaEtcher-1.18.4-x64.AppImage)
* Windows: [Download](https://github.com/balena-io/etcher/releases/download/v1.18.4/balenaEtcher-Setup-1.18.4.exe)
* Mac: [Download](https://github.com/balena-io/etcher/releases/download/v1.18.4/balenaEtcher-1.18.4.dmg)

## Install
```
git clone https://github.com/GabsEdits/fed/ && cd fed
```
```
sudo sh script.sh
```
## Usage
```
    Usage: $0 [-g|-f|-r|-m|-a|-t|-p | -x]
-g    Do all flags (f,r,m,a,t,p)
-f    Make dnf faster
-r    Add RPM Fusion
-m    Add Multimedia Codecs
-a    Install apps
-t    Set up adw-gtk3 & dark style
-p    Add Flathub
-x    Add Apx *don't run with root*
```

<div align="center">
  <sup> Thanks for checking out my project 👋</sup>
