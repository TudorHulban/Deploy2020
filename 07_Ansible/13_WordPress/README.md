# WordPress installation on Ubuntu 20.04 

Note: Update wordpress config file by Ansible does not work. Would need to update file manually.
Edit with:
```
sudo vi /var/www/wordpress/wp-config.php 
```
Overwrite database info lines in top of file with the ones in bottom.

Connect to mysql DB:
```sql
mysql -h localhost -u wordpress -p wordpress
# will ask for password
```
Get connected user:
```sql
SELECT USER();
```
Get current database:
```sql
SELECT DATABASE();
```
#### Resources
```html
https://www.digitalocean.com/community/tutorials/how-to-use-ansible-to-install-and-set-up-wordpress-with-lamp-on-ubuntu-18-04
https://linuxconfig.org/ubuntu-20-04-wordpress-with-apache-installation
https://developer.wordpress.org/themes/basics/template-files/
https://stackoverflow.com/questions/44614863/ansible-unable-to-find-my-cnf-cant-connect-to-local-mysql-server
https://stackoverflow.com/questions/16444306/ansible-idempotent-mysql-installation-playbook
```
