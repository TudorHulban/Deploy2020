## WordPress Snippets
Use plugin `Code Snippets` (`https://wordpress.org/plugins/code-snippets/`) or manually update `functions.php`.

### Make postal code optional
In (child theme) in file ../wordpress/wp-content/themes/astra/functions.php add at last:
```php
// Make zip/postcode field optional
add_filter( 'woocommerce_default_address_fields' , 'optional_postcode_checkout' );
function optional_postcode_checkout( $p_fields ) {
$p_fields['postcode']['required'] = false;
return $p_fields;
}
```

### Show only Free Shipping 
Below shows only free shipping method when available.<br/>
../wordpress/wp-content/themes/astra/functions.php add at last:
```
// Only show all free shipping rates when available
function only_show_free_shipping_rate_when_available( $rates, $package ) {

$free_shipping_rates = array();

// Loop through shipping rates
if ( is_array( $rates ) ) :
foreach ( $rates as $key => $rate ) :

// Check if current rate is free
if ( 0 == $rate->cost ) :
$free_shipping_rates[ $key ] = $rate;
endif;

endforeach;
endif;

// Return the free shipping rates when possible -- Make sure its not only local_pickup
if ( ! empty( $free_shipping_rates ) && ( count( $free_shipping_rates ) > 1 || ! isset( $free_shipping_rates['local_pickup'] ) ) ) :
return $free_shipping_rates;
endif;

return $rates;
}
add_action( 'woocommerce_package_rates', 'only_show_free_shipping_rate_when_available', 10, 2 );
```
#### Resources
```
https://wordpress.org/support/topic/free-flat-rate-shipping/
```


### Find Products
```sql
SELECT * FROM `wp_posts` WHERE `post_type` = "product"
```
#### Resources
```
https://wp-staging.com/in-which-database-table-is-woocommerce-storing-products/
```
