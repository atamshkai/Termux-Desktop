pkg up -y && pkg i -y x11-repo tur-repo && pkg i -y zsh proot-distro pulseaudio termux-x11-nightly chromium firefox xfce4 xfce4-goodies feathernotes xfce-theme-manager xfce4-appmenu-plugin geany
cd $HOME
wget https://github.com/atamshkai/Termux-Zsh/raw/main/zsh.tar.xz 
tar -xvJf zsh.tar.xz && mv ~/zsh/.* ~/
rm -rf ~/zsh
chsh -s zsh 
echo "killall pulseaudio &>/dev/null" >>~/.zshrc 
echo "pulseaudio --start --exit-idle-time=-1; pacmd load-module module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" >>~/.zshrc 
rm -rf ~/.config 
wget https://archive.org/download/atam-shkai-termux-desktop/termux-desktop.tar.xz
tar -xvJf termux-desktop.tar.xz
echo "termux-x11 :0 -xstartup 'dbus-launch --exit-with-session startxfce4' &>/dev/null" >>~/../usr/bin/start-desktop
chmod +x ~/../usr/bin/start-desktop
echo "pkill -f 'app_process / com.termux.x11'" >>~/../usr/bin/stop-desktop
chmod +x ~/../usr/bin/stop-desktop
echo "Please Login Again"
sleep 3
exit
