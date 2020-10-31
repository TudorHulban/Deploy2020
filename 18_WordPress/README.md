# WordPress
## Docker Run
Use Docker Compose below file.
```yaml
version: '3'

services:  
  mysql:
    image: mysql:5.7
    container_name: database
    environment:
     - MYSQL_ROOT_PASSWORD=password
     - MYSQL_DATABASE=wordpress
     - MYSQL_USER=wordpress
     - MYSQL_PASSWORD=admin
    volumes:
     - dbdata=/var/lib/mysql
    ports:
      - 3306:3306

  wordpress:
        image: wordpress
        container_name: wp
        links:
         - mysql
        environment:
         - WORDPRESS_DB_PASSWORD=password
        ports:
         - 8080:80

  phpmyadmin:
    image: phpmyadmin/phpmyadmin
    container_name: pma
    links:
      - mysql
    environment:
      PMA_HOST: mysql
      PMA_PORT: 3306
      PMA_ARBITRARY: 1
    restart: always
    ports:
      - 8081:80

volumes:
  dbdata:
```

## Themes
Import Astra theme. Delete unused themes.
```
rm -rf t*
```
### Load starter template
Install Starter template, check library and pick Elementor templates.
### Resources
```
https://wordpress.org/plugins/astra-sites/
```

## Plugins Maintenance
### File Manager
Only for non production environments.
```
https://wordpress.org/plugins/file-manager-advanced/
```

### WP Maintenance Mode
```
https://wordpress.org/plugins/wp-maintenance-mode/
```

### BackWPup
```
https://wordpress.org/plugins/backwpup/
```

## Plugins WooCommerce
### Direct Checkout
Added to cart alert - Yes.
```
https://wordpress.org/plugins/woocommerce-direct-checkout/
```
### Custom Product Tabs
```
https://wordpress.org/plugins/yikes-inc-easy-custom-woocommerce-product-tabs/
```

### Dynamic Pricing
```
https://wordpress.org/plugins/aco-woo-dynamic-pricing/
```

### Wishlist
```
https://wordpress.org/plugins/ti-woocommerce-wishlist/
```

## Plugins SEO
### Yoast SEO
Check results at seobility.net.
```
https://wordpress.org/plugins/wordpress-seo/
```

## Plugins Analytics
### Slimstat
```
https://wordpress.org/plugins/wp-slimstat/
```

## Plugins Performance
### Autoptimize
Check results at GTmetrix.
```
https://wordpress.org/plugins/autoptimize/
```

## Plugins Legal
### GDPR Cookie Consent
```
https://wordpress.org/plugins/cookie-law-info/
```
Check cookies:
```
https://www.cookieserve.com/
```
Text:
```html
<div class="cli-bar-container cli-style-v2"><div class="cli-bar-message">Utilizăm cookie-uri si alte tehnologii similare pentru a imbunatati experienta dumneavoastră. de navigare si functionalitatea site-ului nostru. Continuarea navigarii implica acceptarea lor. </div><div class="cli-bar-btn_container">[cookie_settings margin="0px 10px 0px 5px"][cookie_button]</div></div>
```

## Localization
### Add language 
Go to Settings -> Site Language. Choose language needed. This is in order to automatically download language packs.<br/>
Revert to English after verifying the downloads in /wordpress/wp-content/languages.

### Add Plugin WPGlobus
```
https://wordpress.org/plugins/wpglobus/
```
From plugin settings add the language previously added.<br/>
Note: Deactivate plugin when performing general updates, ex. changing country or currency.

### Resources
```
https://docs.woocommerce.com/document/woocommerce-localization/
```

## Plugins Protection
### WP Content Copy Protection
Deactivate plugin while performing changes on site.
```
https://wordpress.org/plugins/wp-content-copy-protection/
```

## Resources
```
https://www.tutorialspoint.com/wordpress/index.htm
```
