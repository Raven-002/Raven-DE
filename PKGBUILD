# This is an example PKGBUILD file. Use this as a start to creating your own,
# and remove these comments. For more information, see 'man PKGBUILD'.
# NOTE: Please fill out the license field for your package! If it is unknown,
# then please put 'unknown'.

# Maintainer: Your Name <youremail@domain.com>
pkgname=raven-de
pkgver=0.1.0
pkgrel=1
epoch=
pkgdesc="Desktop configuration"
arch=('any')
url="https://github.com/Raven-002/arch-raven"
license=('GPL')
groups=()
depends=(
    # Base
    base
    base-devel
    networkmanager
    bluez
    bluez-utils
    nano
    vi
    vim
    neovim
    git
    wget
    curl
    zsh
    sh
    bash
    libva-utils
    pipewire-jack
    pipewire-pulse
    posix
    sudo
    btrfs-progs
    openssh
    timeshift
    xdg-user-dirs
    
    # Extra
    posix-c-development
    posix-software-development
    posix-user-portability
    posix-xsi

    ripgrep
    tree

    kitty
    samba

    flatpak

    # Fonts
    ttf-firacode-nerd
    ttf-iosevka-nerd
    ttf-noto-nerd
    ttf-nerd-fonts-symbols
    ttf-nerd-fonts-symbols-common
    ttf-nerd-fonts-symbols-mono

    noto-fonts
    ttf-dejavu

    # Hyprland
    wayland
    hyprland
    swaync
    pipewire
    wireplumber
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
    polkit-gnome
    qt5-wayland
    qt6-wayland
    waybar
    hyprpaper
    rofi-wayland
    hypridle
    hyprlock
    hyprcursor
    hyprwayland-scanner
    cliphist
    iio-sensor-proxy
    xorg-xhost

    # hyprpm deps
    cmake
    ninja
    cpio
    meson

    inotify-tools

    # Theming
    qt5ct
    qt6ct
    breeze
    breeze5
    breeze-gtk
    nwg-look

    # Extra DE experience
    network-manager-applet
    blueman
    gnome-keyring
    libsecret
    seahorse
    )
makedepends=()
checkdepends=()
optdepends=(
    # Base
    linux
    linux-firmware
    grub
    efibootmgr

    # Intel
    intel-ucode
    mesa
    vulkan-intel
    intel-media-driver
    libva-intel-driver
    xf86-video-intel

    # Nvidia
    nvidia
    nvidia-utils
    nvidia-prime
    )
provides=('raven-de')
conflicts=('raven-de')
replaces=()
backup=()
options=()
install=
changelog=
source=()
noextract=()
sha256sums=()
validpgpkeys=()

prepare() {
	ln -snfT "$startdir" "$srcdir/$pkgname-$pkgver"
}

package() {
    # Make directories
    mkdir -p \
        $pkgdir/usr/bin \
        $pkgdir/usr/share/raven-de \
        $pkgdir/usr/share/application \
        $pkgdir/etc/xdg

    # Copy folders
    pwd
    cp --recursive --no-dereference --no-target-directory $srcdir/$pkgname-$pkgver/raven-de $pkgdir/usr/share/raven-de
    cp --recursive --no-dereference --no-target-directory $srcdir/$pkgname-$pkgver/applications $pkgdir/usr/share/applications
    
    # Symlink scripts
    ln -srT $pkgdir/usr/share/raven-de/raven-de-installer $pkgdir/usr/bin/raven-de-installer
    ln -sr $pkgdir/usr/share/raven-de/config-files/gtk/* $pkgdir/etc/xdg/
    ln -sr $pkgdir/usr/share/raven-de/config-files/qt/* $pkgdir/etc/xdg/
    ln -sr $pkgdir/usr/share/raven-de/config-files/kitty $pkgdir/etc/xdg/
    ln -sr $pkgdir/usr/share/raven-de/config-files/rofi $pkgdir/etc/xdg/
    ln -sr $pkgdir/usr/share/raven-de/config-files/waybar $pkgdir/etc/xdg/
    ln -sr $pkgdir/usr/share/raven-de/config-files/hypr $pkgdir/etc/xdg/
    mkdir -p $pkgdir/etc/xfg/hypr-user/
    touch $pkgdir/etc/xfg/hypr-user/hyprland-user-programs.conf
    touch $pkgdir/etc/xfg/hypr-user/hyprland-user-config.conf
    ln -sr $pkgdir/usr/share/raven-de/config-files/ $pkgdir/etc/xdg/
}
