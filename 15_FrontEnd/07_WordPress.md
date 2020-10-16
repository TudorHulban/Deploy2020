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
1. Import Astra theme
Delete existing inactive themes:
```
rm -rf t*
```
2. Plugin: Starter templates<br/>
See library and pick for Elementor.
```
https://wordpress.org/plugins/astra-sites/
```
3. Pick template from starter templates library
4. Plugin: Direct Checkout, Added to cart alert - Yes
```
https://wordpress.org/plugins/woocommerce-direct-checkout/
```
5. Plugin: File Manager
```
https://wordpress.org/plugins/wp-file-manager/
```
6. Localization
Plugin: Polylang
```
https://wordpress.org/plugins/polylang/
```
Add translation file:
```
https://translate.wordpress.org/projects/wp-plugins/woocommerce/stable/ro/default/
```

## Resources
```
https://www.tutorialspoint.com/wordpress/index.htm
```
