#!/bin/bash

usage() {
  echo "Usage: $0 [-g|-f|-r|-m|-a|-t|-p|-x]" 1>&2
  echo "  -g    Do all flags (f,r,m,a)"
  echo "  -f    Make dnf faster"
  echo "  -r    Add RPM Fusion"
  echo "  -m    Add Multimedia Codecs"
  echo "  -a    Install apps"
  echo "  -x    Add Apx *don't run with root*"
  exit 1
}

while getopts ":gfrmatpx" option; do
  case "${option}" in
    g)
      # Do all flags
      if ! grep -q "^fastestmirror=True" /etc/dnf/dnf.conf; then
        sh -c 'echo "fastestmirror=True" >> /etc/dnf/dnf.conf'
      fi

      if ! grep -q "^max_parallel_downloads=10" /etc/dnf/dnf.conf; then
        sh -c 'echo "max_parallel_downloads=10" >> /etc/dnf/dnf.conf'
      fi

      if ! grep -q "^defaultyes=True" /etc/dnf/dnf.conf; then
        sh -c 'echo "defaultyes=True" >> /etc/dnf/dnf.conf'
      fi

      if ! grep -q "^keepcache=True" /etc/dnf/dnf.conf; then
        sh -c 'echo "keepcache=True" >> /etc/dnf/dnf.conf'
      fi

      dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

      flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
      flatpak --user override --filesystem=/home/$USER/.icons/:ro
      flatpak --user override --filesystem=/usr/share/icons/:ro

      dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin -y
      dnf groupupdate sound-and-video -y

      dnf install discord -y
      wget https://download.cdn.viber.com/desktop/Linux/viber.rpm && rpm -i viber.rpm
      rpmkeys --import https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg && printf "[gitlab.com_paulcarroty_vscodium_repo]\nname=download.vscodium.com\nbaseurl=https://download.vscodium.com/rpms/\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg\nmetadata_expire=1h" | sudo tee -a /etc/yum.repos.d/vscodium.repo
      dnf install codium -y
      flatpak install flathub org.gnome.Solanum -y
      flatpak install flathub com.rafaelmardojai.Blanket -y

      dnf copr enable nickavem/adw-gtk3 -y
      dnf install adw-gtk3 -y
      gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3-dark' && gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
      ;;
    f)
if ! grep -q "^fastestmirror=True" /etc/dnf/dnf.conf; then
  sh -c 'echo "fastestmirror=True" >> /etc/dnf/dnf.conf'
fi

if ! grep -q "^max_parallel_downloads=10" /etc/dnf/dnf.conf; then
  sh -c 'echo "max_parallel_downloads=10" >> /etc/dnf/dnf.conf'
fi

if ! grep -q "^defaultyes=True" /etc/dnf/dnf.conf; then
  sh -c 'echo "defaultyes=True" >> /etc/dnf/dnf.conf'
fi

if ! grep -q "^keepcache=True" /etc/dnf/dnf.conf; then
  sh -c 'echo "keepcache=True" >> /etc/dnf/dnf.conf'
fi
      ;;
    r)
      dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
      ;;
    m)
      dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin -y
      dnf groupupdate sound-and-video -y
      ;;
    a)
      dnf install discord -y
      wget https://download.cdn.viber.com/desktop/Linux/viber.rpm && rpm -i viber.rpm
      rpmkeys --import https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg && printf "[gitlab.com_paulcarroty_vscodium_repo]\nname=download.vscodium.com\nbaseurl=https://download.vscodium.com/rpms/\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg\nmetadata_expire=1h" | sudo tee -a /etc/yum.repos.d/vscodium.repo
      dnf install codium
      flatpak install flathub org.gnome.Solanum
      flatpak install flathub com.rafaelmardojai.Blanket
      flatpak install flathub com.vixalien.sticky
      flatpak install flathub io.github.dgsasha.Remembrance
      ;;
    t)
      dnf copr enable nickavem/adw-gtk3 -y
      dnf install adw-gtk3 -y
      gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3-dark' && gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
      ;;
    p)
      flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
      flatpak --user override --filesystem=/home/$USER/.icons/:ro
      flatpak --user override --filesystem=/usr/share/icons/:ro
      ;;
    x)
      curl -s https://raw.githubusercontent.com/spaceguybob/apx-install/main/installer.sh | sh
      ;;
    *)
      usage
      ;;
  esac
done

# Check if Script is Run as Root
if [[ $EUID -ne 0 ]]; then
  echo "You must be a root user to run this script, please run sudo sh ./script.sh" 2>&1
  exit 1
fi
