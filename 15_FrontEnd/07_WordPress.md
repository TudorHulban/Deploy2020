# WordPress: First steps
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
### Plugin: File Manager
```
https://wordpress.org/plugins/file-manager-advanced/
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


## Resources
```
https://www.tutorialspoint.com/wordpress/index.htm
```
