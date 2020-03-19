1. Install X11
```bash
sudo apt-get install lubuntu-core lxappearance obconf qpdfview
sudo dpkg-reconfigure tzdata
```
2. Transfer SlimJet
```bash
scp slimjet_amd64.deb tudi@192.168.1.18:/home/tudi/Downloads
```
3. Install Wine
```bash
sudo apt install wine-stable
sudo dpkg --add-architecture i386 
sudo apt-get update
sudo apt-get install wine32
```
4. Optimization for deploys not connected to network all time
```bash
sudo systemctl stop systemd-networkd-wait-online.service
sudo systemctl disable systemd-networkd-wait-online.service
sudo systemctl mask systemd-networkd-wait-online.service
```
5. USB maker - download and run the AppImage with sudo
```html
https://www.balena.io/etcher/
```
6. Keyboard shortcuts
```html
http://www.comfsm.fm/~dleeling/tech/lubuntu-lxde-openbox-desktop-keyboard-shortcuts.html
```

7. Disable services
```bash
sudo apt autoremove  apache apache2
# https://help.ubuntu.com/community/AutomaticSecurityUpdates
sudo apt autoremove unattended-upgrades
# UFW - Uncomplicated Firewall 
sudo apt autoremove ufw  # or sudo ufw disable, see https://help.ubuntu.com/community/UFW

sudo systemctl mask apport.service
sudo systemctl disable apparmor.service
sudo systemctl disable iscsid.service
sudo systemctl mask iscsid.service
sudo systemctl disable virtualbox-guest-utils.service
sudo systemctl disable kmod.service
sudo systemctl mask kmod.service
```
