# Check if Script is Run as Root
if [[ $EUID -ne 0 ]]; then
  echo "You must be a root user to run this script, please run sudo sh ./all.sh" 2>&1
  exit 1
fi
# Enable flathub repo
 flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
 
# Enable RPM Fusion
dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Media Codecs
dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin
dnf groupupdate sound-and-video

# Hostname
hostnamectl set-hostname "asus"

# Apps
flatpak install flathub com.discordapp.Discord
flatpak install flathub org.telegram.desktop
flatpak install flathub com.bitwarden.desktop
flatpak install flathub com.github.Eloston.UngoogledChromium
flatpak install flathub com.spotify.Client
wget https://download.cdn.viber.com/desktop/Linux/viber.rpm
rpm -i viber.rpm
wget https://code.visualstudio.com/sha/download?build=stable&os=linux-rpm-x64
rpm -i code-1.74.2-1671533504.el7.x86_64.rpm

# Clear Cache
sudo dnf clean dbcache OR dnf clean all

# Theme
dnf copr enable nickavem/adw-gtk3
dnf install adw-gtk3
gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3-dark' && gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
cd /home/gaba
wget https://github.com/ful1e5/apple_cursor/releases/download/v2.0.0/macOS-Monterey.tar.gz
tar -xvf macOS-Monterey.tar.gz
mkdir ./icons
mv macOS-* ~/.icons/

# DNF Config
sudo nano /etc/dnf/dnf.conf
# fastestmirror=True
# max_parallel_downloads=10
# defaultyes=True
# keepcache=True
# --------