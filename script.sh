#!/bin/bash

usage() {
  echo "Usage: [0-4]" 1>&2
  echo "  0    Do all options"
  echo "  1    Make dnf faster"
  echo "  2    Add RPM Fusion"
  echo "  3    Add Multimedia Codecs"
  echo "  4    Install apps"
}

read -p "Does it run Asahi Linux? (y/n): " asahi

if [[ $asahi == "y" ]]; then
  echo "Some apps are not available for ARM64, Discord will be replaced with Armcord and other software will be changed accordingly."
fi

usage

while read -p "Enter option (0-4): " option; do
  case "$option" in
  0)
    # Do all flags

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

    dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin -y
    dnf groupupdate sound-and-video -y

    dnf remove firefox -y
    dnf remove adwaita-qt5 -y
    wget https://download.cdn.viber.com/desktop/Linux/viber.rpm && rpm -i viber.rpm
    rpmkeys --import https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg && printf "[gitlab.com_paulcarroty_vscodium_repo]\nname=download.vscodium.com\nbaseurl=https://download.vscodium.com/rpms/\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg\nmetadata_expire=1h" | sudo tee -a /etc/yum.repos.d/vscodium.repo
    dnf install codium
    flatpak install flathub com.discordapp.Discord
    flatpak install flathub org.mozilla.firefox
    flatpak install flathub org.gnome.Solanum
    flatpak install flathub com.rafaelmardojai.Blanket
    flatpak install flathub com.vixalien.sticky
    flatpak install flathub com.mattjakeman.ExtensionManager
    flatpak install flathub io.github.nokse22.teleprompter
    flatpak install flathub com.rafaelmardojai.SharePreview
    flatpak install flathub org.gnome.design.Contrast
    flatpak install flathub io.gitlab.news_flash.NewsFlash
    flatpak install flathub org.gnome.World.Iotas
    flatpak install flathub org.gnome.gitlab.somas.Apostrophe
    flatpak install flathub org.gnome.design.Emblem
    flatpak install flathub org.gnome.design.Lorem
    flatpak install flathub fr.romainvigier.MetadataCleaner
    flatpak install https://valent.andyholmes.ca/valent.flatpakref
    flatpak install flathub com.raggesilver.BlackBox
    flatpak install flathub app.drey.Damask
    flatpak install flathub io.github.shiftey.Desktop
    flatpak install flathub io.github.david_swift.Flashcards
    ;;
  1)
    if ! grep -q "^max_parallel_downloads=10" /etc/dnf/dnf.conf; then
      sh -c 'echo "max_parallel_downloads=10" >> /etc/dnf/dnf.conf'
    fi

    if ! grep -q "^defaultyes=True" /etc/dnf/dnf.conf; then
      sh -c 'echo "defaultyes=True" >> /etc/dnf/dnf.conf'
    fi

    if ! grep -q "^keepcache=True" /etc/dnf/dnf.conf; then
      sh -c 'echo "keepcache=True" >> /etc/dnf/dnf.conf'
    fi
    break
    ;;
  2)
    dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
    break
    ;;
  3)
    dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin -y
    dnf groupupdate sound-and-video -y
    break
    ;;
  4)
    if [[ $asahi == "y" ]]; then
      echo "Discord is not available for ARM64, you will make an webapp of it yourself."
    else
      flatpak install flathub com.discordapp.Discord
    fi
    flatpak install flathub org.mozilla.firefox
    flatpak install flathub org.gnome.Solanum
    flatpak install flathub com.rafaelmardojai.Blanket
    flatpak install flathub com.vixalien.sticky
    flatpak install flathub com.mattjakeman.ExtensionManager
    flatpak install flathub io.github.nokse22.teleprompter
    flatpak install flathub com.rafaelmardojai.SharePreview
    flatpak install flathub org.gnome.design.Contrast
    flatpak install flathub io.gitlab.news_flash.NewsFlash
    flatpak install flathub org.gnome.World.Iotas
    flatpak install flathub org.gnome.gitlab.somas.Apostrophe
    flatpak install flathub org.gnome.design.Emblem
    flatpak install flathub org.gnome.design.Lorem
    flatpak install flathub fr.romainvigier.MetadataCleaner
    flatpak install https://valent.andyholmes.ca/valent.flatpakref
    flatpak install flathub com.raggesilver.BlackBox
    flatpak install flathub app.drey.Damask
    flatpak install flathub io.github.shiftey.Desktop
    flatpak install flathub io.github.david_swift.Flashcards
    break
    ;;
  *)
    echo "Invalid option, try again" 1>&2
    usage
    ;;
  esac
done

# Check if Script is Run as Root
if [[ $EUID -ne 0 ]]; then
  echo "You must be a root user to run this script, please run sudo sh ./script.sh" 2>&1
  exit 1
fi
