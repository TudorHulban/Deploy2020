# WordPress: First steps
## Run Wordpress
Use Docker Compose below file.
```
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

## Load CSS file
```html
<link rel="stylesheet" href="<?php echo get_stylesheet_uri(); ?>">
```
## Use images
Load them first in the control panel.
## Create page 
A template is needed. Template is considered by WordPress PHP file with header as below:
```php
<?php
/*
Template Name: Template Page
*/
?>

<?php get_header(); ?>

<?php get_footer(); ?>
```
## Flow
Delete existing pages.
### Import Astra theme
Delete existing inactive themes:
```
rm -rf t*
```
### Plugin: Starter templates<br/>
See library and pick for Elementor.
```
https://wordpress.org/plugins/astra-sites/
```
### Pick template from starter templates library
### Plugin: Direct Checkout
Added to cart alert - Yes.
```
https://wordpress.org/plugins/woocommerce-direct-checkout/
```
## Maintenance
### Plugin: File Manager
Only for non production environments.
```
https://wordpress.org/plugins/file-manager-advanced/
```

### Plugin: WP Maintenance Mode
```
https://wordpress.org/plugins/wp-maintenance-mode/
```

### Plugin: BackWPup
```
https://wordpress.org/plugins/backwpup/
```

## WooCommerce
### Make postal code optional
In (child theme) in file ../wordpress/wp-content/themes/astra/functions.php add at last:
```
// Make zip/postcode field optional
add_filter( 'woocommerce_default_address_fields' , 'optional_postcode_checkout' );
function optional_postcode_checkout( $p_fields ) {
$p_fields['postcode']['required'] = false;
return $p_fields;
}
```
### Localization
#### Add language 
Go to Settings -> Site Language. Choose language needed. This is in order to automatically download language packs.<br/>
Revert to English after verifying the downloads in /wordpress/wp-content/languages.

#### Add Plugin WPGlobus
```
https://wordpress.org/plugins/wpglobus/
```
From plugin settings add the language previously added.<br/>
Note: Deactivate plugin when performing general updates, ex. changing country or currency.

#### Resources
```
https://docs.woocommerce.com/document/woocommerce-localization/
```

### Plugin: Custom Product Tabs
```
https://wordpress.org/plugins/yikes-inc-easy-custom-woocommerce-product-tabs/
```

### Plugin: Dynamic Pricing
```
https://wordpress.org/plugins/aco-woo-dynamic-pricing/
```

### Plugin: Wishlist
```
https://wordpress.org/plugins/ti-woocommerce-wishlist/
```

### Plugin: Slimstat
```
https://wordpress.org/plugins/wp-slimstat/
```

## Performance
### Plugin: Autoptimize
Check results at GTmetrix.
```
https://wordpress.org/plugins/autoptimize/
```

## SEO
### Plugin: Yoast SEO
Check results at seobility.net.
```
https://wordpress.org/plugins/wordpress-seo/
```

## Resources
```
https://www.tutorialspoint.com/wordpress/index.htm
```
