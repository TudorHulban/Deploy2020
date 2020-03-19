Note: Update wordpress config file by Ansible does not work. Would need to update file manually.

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
https://developer.wordpress.org/themes/basics/template-files/
```
