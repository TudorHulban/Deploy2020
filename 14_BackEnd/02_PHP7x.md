# PHP: Install
## 1. Prerequisites
```bash
sudo apt upgrade
sudo apt update
```
## 2. Download Binaries
```bash
sudo apt install ca-certificates apt-transport-https 
wget -q https://packages.sury.org/php/apt.gpg -O- | sudo apt-key add -
echo "deb https://packages.sury.org/php/ stretch main" | sudo tee /etc/apt/sources.list.d/php.list
```
## 3. Install Binaries
```bash
sudo apt update
sudo apt install php7.2
sudo apt install php7.2-cli php7.2-common php7.2-curl php7.2-mbstring php7.2-mysql php7.2-xml
```
