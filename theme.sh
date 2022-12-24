# Check if Script is Run as Root
if [[ $EUID -ne 0 ]]; then
  echo "You must be a root user to run this script, please run sudo sh ./all.sh" 2>&1
  exit 1
fi

# Theme install
dnf copr enable nickavem/adw-gtk3
dnf install adw-gtk3
gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3-dark' && gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
cd /home/gaba
wget https://github.com/ful1e5/apple_cursor/releases/download/v2.0.0/macOS-Monterey.tar.gz
tar -xvf macOS-Monterey.tar.gz
mkdir ./icons
mv macOS-* ~/.icons/
