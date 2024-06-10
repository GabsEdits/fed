#!/bin/bash

usage() {
  echo "Usage: [0-4]" 1>&2
  echo "  0    Do all options"
  echo "  1    Make dnf faster"
  echo "  2    Add RPM Fusion"
  echo "  3    Add Multimedia Codecs"
  echo "  4    Install apps"
}

check_root() {
  if [[ $EUID -ne 0 ]]; then
    echo "You must be a root user to run this script, please run sudo sh ./script.sh" 2>&1
    exit 1
  fi
}

configure_dnf() {
  local config_file="/etc/dnf/dnf.conf"
  grep -qxF "max_parallel_downloads=10" $config_file || echo "max_parallel_downloads=10" >>$config_file
  grep -qxF "defaultyes=True" $config_file || echo "defaultyes=True" >>$config_file
  grep -qxF "keepcache=True" $config_file || echo "keepcache=True" >>$config_file
}

add_rpm_fusion() {
  dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
}

add_multimedia_codecs() {
  dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin -y
  dnf groupupdate sound-and-video -y
}

install_apps() {
  local common_apps=(
    "org.mozilla.firefox"
    "org.gnome.Solanum"
    "com.rafaelmardojai.Blanket"
    "com.vixalien.sticky"
    "com.mattjakeman.ExtensionManager"
    "io.github.nokse22.teleprompter"
    "com.rafaelmardojai.SharePreview"
    "org.gnome.design.Contrast"
    "io.gitlab.news_flash.NewsFlash"
    "org.gnome.World.Iotas"
    "org.gnome.gitlab.somas.Apostrophe"
    "org.gnome.design.Emblem"
    "org.gnome.design.Lorem"
    "fr.romainvigier.MetadataCleaner"
    "com.raggesilver.BlackBox"
    "app.drey.Damask"
    "io.github.shiftey.Desktop"
    "io.github.david_swift.Flashcards"
  )

  local asahi_apps=("${common_apps[@]}")
  local non_asahi_apps=("com.discordapp.Discord" "${common_apps[@]}")

  if [[ $asahi == "y" ]]; then
    echo "Some apps are not available for ARM64, Discord will be replaced with Armcord and other software will be changed accordingly."
    apps=("${asahi_apps[@]}")
  else
    apps=("${non_asahi_apps[@]}")
  fi

  for app in "${apps[@]}"; do
    echo -e "\033[1m=== Installing $app... ===\033[0m"
    flatpak install flathub "$app" -y
    echo -e "\033[1m=== $app installed successfully! ===\033[0m"
  done

  flatpak install https://valent.andyholmes.ca/valent.flatpakref -y
}

read -p "Does it run Asahi Linux? (y/n): " asahi

check_root
usage

while read -p "Enter option (0-4): " option; do
  case "$option" in
  0)
    configure_dnf
    add_rpm_fusion
    add_multimedia_codecs
    install_apps
    ;;
  1)
    configure_dnf
    ;;
  2)
    add_rpm_fusion
    ;;
  3)
    add_multimedia_codecs
    ;;
  4)
    install_apps
    ;;
  *)
    echo "Invalid option, try again" 1>&2
    usage
    ;;
  esac
done
