# Termux Desktop

This is Mac Os Style Termux Xfce Desktop.

Before you install it on android 12 and 13,

Deactive phantom process killer. 

[🏹 Here ◀️](https://github.com/atamshkai/Phantom-Process-Killer/tree/main) 

## Preview

![](https://raw.githubusercontent.com/atamshkai/Termux-Desktop/main/termux-desktop.png)

### To Do 

#### (Use A VPN For Tur Packages)

Paste this command to termux's terminal

```
rm -rf ~/termux-desktop.sh;pkg up -y && pkg i -y wget;cd $HOME;wget https://raw.githubusercontent.com/atamshkai/Termux-Desktop/main/termux-desktop.sh && bash termux-desktop.sh
```

### Give Storage Permission
```
termux-setup-storage
```

### Start Desktop
```
tm-x11 &>/dev/null
```

### Link STORAGE To Desktop
```
ln -s /sdcard ~/Desktop/Storage
```

#### Link SDCARD To Desktop (Optional)
```
ln -s /storage/sdcard-name ~/Desktop/sdcard
```

### Stop Desktop 
```
stop-tm-x11
```

### Use Other Linux Distros Softwares On Termux Desktop (Experimental)

##### Example For PRoot Distros

##### Open Terminal On Termux Desktop
```
proot-distro login ubuntu --shared-tmp
```

```
export DISPLAY=:0
```

##### Now you can test with a browser
```
firefox
```

## Termux 
[Download](https://github.com/termux/termux-app/releases/tag/v0.118.1) 

## Termux-x11 
[Download](https://github.com/termux/termux-x11/releases/tag/nightly) 

## Termux-x11 Custom Resolution
1920:1080
