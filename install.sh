#!/usr/bin/env bash





#flatpak install -y flathub org.freecad.FreeCAD
#flatpak install -y flathub com.google.AndroidStudio
#flatpak install -y flathub com.ultimaker.cura
#flatpak install -y flathub com.bambulab.BambuStudio
#flatpak install -y flathub cc.arduino.IDE2

#flatpak override --user --env=ELECTRON_OZONE_PLATFORM_HINT=x11 cc.arduino.IDE2


echo "Removing old configuration..."

rm -rf \
    ~/.config/hypr \
    ~/.config/kitty \
    ~/.config/fastfetch \
    ~/.zshrc \
    ~/.local/state/noctalia/settings.toml

echo "Creating symlinks..."

mkdir -p ~/.config
mkdir -p ~/.local/state/noctalia

ln -s ~/Hypr-Fedora/hypr ~/.config
ln -s ~/Hypr-Fedora/kitty ~/.config
ln -s ~/Hypr-Fedora/fastfetch ~/.config
ln -s ~/Hypr-Fedora/.zshrc ~/
ln -s ~/Hypr-Fedora/settings.toml ~/.local/state/noctalia

echo "Installation complete!"
