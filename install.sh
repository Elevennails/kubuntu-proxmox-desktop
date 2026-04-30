#!/bin/bash
sudo apt install okular tmux gufw git qemu-guest-agent spice-vdagent brave curl -y
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg 
sudo curl -fsSLo /etc/apt/sources.list.d/brave-browser-release.sources https://brave-browser-apt-release.s3.brave.com/brave-browser.sources
sudo apt update 
sudo apt install brave-browser -y
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Elevennails/tmux_dotfiles/refs/heads/main/install.sh)"


mkdir -p ~/.config/autostart
cat <<EOF >  ~/.config/autostart/spice-vdagent.desktop
 ~/.config/autostart/spice-vdagent.desktop
[Desktop Entry]
Type=Application
Exec=spice-vdagent
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name=SPICE vdagent
Comment=Start SPICE clipboard agent
EOF


spice-vdagent
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Elevennails/kickstart.nvim/refs/heads/master/install.sh)"
sudo apt install snapd -y
sudo snap install telegram-desktop 
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt install obs-studio ffmpeg v4l2loopback-dkms filezilla -y

#echo Installing plasma-session-x11 you many not need this much longer if peep fix cut and paste
#sudo apt install plasma-session-x11 -y
