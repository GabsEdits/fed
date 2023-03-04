#!/bin/bash

usage() {
  echo "Usage: $0 [-h] [-f] [-r] [-m] [-a]"
  echo "  -h: Show this help message"
  echo "  -f: Enable fastestmirror in dnf.conf"
  echo "  -r: Enable RPMFusion repository"
  echo "  -m: Install multimedia codecs"
  echo "  -a: Install apps (Discord, Viber, and IntelliJ)"
  echo "  -t: Install adw-gtk3 theme"
}

enable_fastestmirror=false
enable_rpmfusion=false
install_multimedia=false
install_apps=false
install_theme=false

while getopts ":hfrm:a" opt; do
  case ${opt} in
    h )
      usage
      exit 0
      ;;
    f )
      enable_fastestmirror=true
      ;;
    r )
      enable_rpmfusion=true
      ;;
    m )
      install_multimedia=true
      ;;
    a )
      install_apps=true
      ;;
    t )
    install_theme=true
      ;;
    \? )
      echo "Invalid option: -$OPTARG" 1>&2
      usage
      exit 1
      ;;
    : )
      echo "Option -$OPTARG requires an argument" 1>&2
      usage
      exit 1
      ;;
  esac
done

# Check if Script is Run as Root
if [[ $EUID -ne 0 ]]; then
  echo "You must be a root user to run this script, please run sudo sh $0" 2>&1
  exit 1
fi

if $enable_fastestmirror; then
  echo "Making dnf faster..."
  sh -c 'echo "fastestmirror=True" >> /etc/dnf/dnf.conf'
  sh -c 'echo "max_parallel_downloads=10" >> /etc/dnf/dnf.conf'
  sh -c 'echo "defaultyes=True" >> /etc/dnf/dnf.conf'
  sh -c 'echo "keepcache=True" >> /etc/dnf/dnf.conf'
fi

if $enable_rpmfusion; then
  echo "Adding RPMFusion..."
  dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
fi

if $install_multimedia; then
  echo "Installing multimedia codecs..."
  dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin -y
  dnf groupupdate sound-and-video -y
fi

if $install_apps; then
  echo "Installing apps..."
  dnf install discord -y
  wget https://download.cdn.viber.com/desktop/Linux/viber.rpm && rpm -i viber.rpm
  flatpak install flathub com.jetbrains.IntelliJ-IDEA-Community -y
fi

if $install_theme; then
echo "Setting up adw-gtk3 & dark style..."
dnf copr enable nickavem/adw-gtk3 -y
dnf install adw-gtk3 -y
gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3-dark' && gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
fi
