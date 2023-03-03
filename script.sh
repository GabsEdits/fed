# Check if Script is Run as Root
if [[ $EUID -ne 0 ]]; then
  echo "You must be a root user to run this script, please run sudo sh ./script.sh" 2>&1
  exit 1
fi

echo "Making dnf faster..."
sh -c 'echo "fastestmirror=True" >> /etc/dnf/dnf.conf'
sh -c 'echo "max_parallel_downloads=10" >> /etc/dnf/dnf.conf'
sh -c 'echo "defaultyes=True" >> /etc/dnf/dnf.conf'
sh -c 'echo "keepcache=True" >> /etc/dnf/dnf.conf'

# Enable flathub repo + fix cursor in flatpak apps
echo "Adding Flathub"
 flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
 flatpak --user override --filesystem=/home/$USER/.icons/:ro
 flatpak --user override --filesystem=/usr/share/icons/:ro
 
# Enable RPM Fusion
echo "Adding RPMFusion"
dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

# Media Codecs
echo "Adding Multimedia Codecs"
dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin -y
dnf groupupdate sound-and-video -y

# Apps
echo "Installing apps"
dnf install discord -y
wget https://download.cdn.viber.com/desktop/Linux/viber.rpm && rpm -i viber.rpm
flatpak install flathub com.jetbrains.IntelliJ-IDEA-Community -y

# Theme
echo "Setting up adw-gtk3 & dark sytle"
dnf copr enable nickavem/adw-gtk3 -y
dnf install adw-gtk3 -y
gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3-dark' && gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
fi
