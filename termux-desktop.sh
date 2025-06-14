pkg up -y && pkg i -y x11-repo tur-repo && pkg i -y wget audacious parole zsh proot-distro pulseaudio termux-x11-nightly chromium firefox xfce4 xfce4-goodies feathernotes xfce-theme-manager xfce4-terminal xfce4-appmenu-plugin geany tmux pulseaudio-glib alsa-utils ncpamixer
cd $HOME
wget https://mirrors.sdu.edu.cn/termux/termux-x11/pool/main/p/pavucontrol-qt/pavucontrol-qt_2.0.0_aarch64.deb
chmod +x pavucontrol-qt_2.0.0_aarch64.deb
dpkg -i pavucontrol-qt_2.0.0_aarch64.deb
pkg i -y pavucontrol-qt
apt-get --fix-broken install
mv ~/.zshrc ~/.zshrc.old
rm -rf ~/termux-desktop.tar.xz
wget https://github.com/atamshkai/Termux-Zsh/raw/main/zsh.tar.xz 
tar -xvJf zsh.tar.xz
chsh -s zsh 
echo "killall pulseaudio &>/dev/null" >>~/.zshrc 
echo "pulseaudio --start --exit-idle-time=-1; pacmd load-module module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" >>~/.zshrc 
echo "load-module module-aaudio-sink" >>/data/data/com.termux/files/usr/etc/pulse/default.pa
rm -rf ~/.config 
wget https://github.com/atamshkai/Termux-Desktop/releases/download/Termux-Desktop/termux-desktop.tar.xz
tar -xvJf termux-desktop.tar.xz
echo "termux-x11 :0 -xstartup 'dbus-launch --exit-with-session xfce4-session' &>/dev/null" >>~/../usr/bin/tm-x11
chmod +x ~/../usr/bin/tm-x11
echo "pkill -f com.termux.x11" >>~/../usr/bin/stop-tm-x11
chmod +x ~/../usr/bin/stop-tm-x11
echo "Please Login Again"
exit
