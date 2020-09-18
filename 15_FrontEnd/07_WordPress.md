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

## Resources
```
https://www.tutorialspoint.com/wordpress/index.htm
```
