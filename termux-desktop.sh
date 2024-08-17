pkg up -y && pkg i -y x11-repo tur-repo && pkg i -y audacious parole zsh proot-distro pulseaudio termux-x11-nightly chromium firefox xfce4 xfce4-goodies feathernotes xfce-theme-manager xfce4-terminal xfce4-appmenu-plugin geany
cd $HOME
rm -rf ~/.zshrc
rm -rf ~/termux-desktop.tar.xz
wget https://github.com/atamshkai/Termux-Zsh/raw/main/zsh.tar.xz 
tar -xvJf zsh.tar.xz && mv ~/zsh/.* ~/
rm -rf ~/zsh
chsh -s zsh 
echo "killall pulseaudio &>/dev/null" >>~/.zshrc 
echo "pulseaudio --start --exit-idle-time=-1; pacmd load-module module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" >>~/.zshrc 
rm -rf ~/.config 
wget https://archive.org/download/atamshkai/termux-desktop.tar.xz
tar -xvJf termux-desktop.tar.xz
echo "termux-x11 :0 -xstartup 'dbus-launch --exit-with-session startxfce4' &>/dev/null" >>~/../usr/bin/tm-x11
chmod +x ~/../usr/bin/tm-x11
echo "pkill -f 'app_process / com.termux.x11'" >>~/../usr/bin/stop-tm-x11
chmod +x ~/../usr/bin/stop-tm-x11
wget https://github.com/atamshkai/Termux-Desktop/raw/main/loader.apk
rm -rf /data/data/com.termux/files/usr/libexec/termux-x11/loader.apk
mv loader.apk /data/data/com.termux/files/usr/libexec/termux-x11
chmod +x /data/data/com.termux/files/usr/libexec/termux-x11/loader.apk
echo "Please Login Again"
sleep 3
exit
