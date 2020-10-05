### Add Romanian 
#### Generate locales
#### Add keyboard switch indicator to panel
#### Add Romanian with win keys
Switch as needed.

### Set run level to text
```
sudo vi /etc/inittab
# modify line with default level as
id:3:initdefault:
```
Resources
```
https://ostechnix.com/check-runlevel-linux/
```
### Ebtables
```
https://wiki.debian.org/BridgeNetworkConnections
```
### Save Rules
```
ebtables-save -> /etc/network/ebtables.rules
```
