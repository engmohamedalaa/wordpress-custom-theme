<?php
add_filter( 'use_block_editor_for_post', '__return_false' );
add_filter( 'use_block_editor_for_post_type', function( $enabled, $post_type ) {
    return 'page' === $post_type ? false : $enabled;
}, 10, 2 );
//Remove Query Strings from Static Resources
function _remove_script_version( $src ){
    $parts = explode( '?ver', $src );
    return $parts[0];
}
add_filter( 'script_loader_src', '_remove_script_version', 15, 1 );
add_filter( 'style_loader_src', '_remove_script_version', 15, 1 );
//include NavWalker class for bootstrap navigation menu
require_once ABSPATH.'/wp-bootstrap-navwalker.php';
// add featured image support
add_theme_support('post-thumbnails');
/**
 * Add HTML5 theme support.
 */
function wpdocs_after_setup_theme() {
    add_theme_support( 'html5', array( 'search-form' ) );
}
add_action( 'after_setup_theme', 'wpdocs_after_setup_theme' );
/*
** function to add template custom style
** wp_enqueue_style()
*/

function temp_add_styles(){
    wp_enqueue_style('googlefonts1', 'https://fonts.googleapis.com/css?family=Montserrat:400,700');
    wp_enqueue_style('googlefonts2', 'https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700');
    wp_enqueue_style('style', get_template_directory_uri() . '/css/styles.css');
    wp_enqueue_style('custom-style', get_template_directory_uri() . '/css/custom.css?no_cash=2');
}
/*
** function to add template custom script
** wp_enqueue_script()
*/
function temp_add_scripts(){
    wp_enqueue_script('Mojquery', '//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js');
    wp_enqueue_script('fontawesomecustom', 'https://use.fontawesome.com/releases/v5.15.4/js/all.js');
    wp_enqueue_script('bootstrap', 'https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js', array(), false, true);
    wp_enqueue_script('customJs', get_template_directory_uri() . '/js/scripts.js', array(), false, true);
    // if(get_post_meta(get_the_ID(), '_wp_page_template', true) == 'contact.php'){
    //   wp_enqueue_script('forms', 'https://cdn.startbootstrap.com/sb-forms-latest.js', array(), false, true);
    // }
}

add_filter('style_loader_tag',  'preload_filter', 10, 2);
function preload_filter($html, $handle){
  if(strcmp($handle, 'preload-style') == 0){
    $html = str_replace("rel='stylesheet'", "rel='preload' as='style' ", $html);
  }
  return $html;
}
/*
** add custom menus
*/
function custom_menu(){
    register_nav_menus(array(
        'nav-menu'     => 'Nav Menu',
        'footer-menu'  => 'Footer Menu'
    ));
}
function nav_menu(){
    wp_nav_menu(array(
        'theme_location' => 'nav-menu',
        'menu_id'        => 'main-navigation',
        'menu_class'     => 'navbar-nav text-uppercase ms-auto py-4 py-lg-0',
        'container'      => false,
        'depth'          => 2,
        'walker'         => new wp_bootstrap_navwalker()
    ));
}
function footer_menu(){
    wp_nav_menu(array(
        'theme_location' => 'footer-menu',
        'menu_class'     => 'list',
        'container'      => false,
        'depth'          => 1,
        'walker'         => new wp_bootstrap_navwalker()
    ));
}

/*
* custom content/title function to set lenght dynamic
*/
function content($limit) {
  $content = explode(' ', get_the_content(), $limit);
  if(count($content)>=$limit){
    array_pop($content);
    $content = implode(" ",$content).'...';
  }else{
    $content = implode(" ",$content);
  }
  $content = preg_replace('/[.+]/','', $content);
  $content = apply_filters('the_content', $content);
  $content = str_replace(']]>', ']]&gt;', $content);
  return $content;
}
function title($limit){
    $title = explode(' ', get_the_title(), $limit);
    if(count($title)>=$limit){
        array_pop($title);
        $title = implode(" ",$title).'...';
    }else{
        $title = implode(" ",$title);
    }
    $title = preg_replace('/[.+]/','', $title);
    $title = apply_filters('the_title', $title);
    $title = str_replace(']]>', ']]&gt;', $title);
    return $title;
}

function my_custom_mime_types( $mimes ) {
  // New allowed mime types.
  $mimes['svg']  = 'image/svg+xml';
  $mimes['svgz'] = 'image/svg+xml';
  //$mimes['doc']  = 'application/msword';
  // Optional. Remove a mime type.
  unset( $mimes['exe'] );
  return $mimes;
}
add_filter( 'upload_mimes', 'my_custom_mime_types' );
/*
** add actions
*/
// add css styles
add_action('wp_enqueue_scripts','temp_add_styles');
//add js scripts
add_action('wp_enqueue_scripts','temp_add_scripts');

function your_submenu_class($menu) {
    $menu = preg_replace('/ class=" dropdown-menu"/','/ class=" submenu" /',$menu);
    return $menu;
}
add_filter('wp_nav_menu','your_submenu_class');


function wc_place_order($type){
  global $woocommerce, $current_user, $wpdb;
  // $cart_total  = str_replace(array('EGP', ''), array(',', ''), WC()->cart->subtotal);
	$cart_total       = get_cart_total();
 	if($type == 'kata3y' || $_COOKIE['tg_selected'] == 'kata3y'){
    $real_cod      = sanitize_text_field(base64_decode($_POST['co']));
    if($cart_total > $real_cod){
      wp_redirect(home_url('/cart/?error=real_cod'));
      exit;
    }
  }
  $customer_name           = sanitize_text_field($_POST['customer_name']);
  $customer_phone          = sanitize_text_field($_POST['customer_phone1']);
  $customer_address        = sanitize_text_field($_POST['customer_address']);
  $shipping_cost           = sanitize_text_field(base64_decode($_POST['sc']));
  //$shipping_stored_state   = sanitize_text_field(base64_decode($_POST['ss']));
  $shipping_selected_state = sanitize_text_field($_POST['tg_state']);
  if(empty($shipping_selected_state)){
    $shipping_selected_state = sanitize_text_field(base64_decode($_POST['scode']));
  }
  $shipping_stored_state   = $wpdb->get_row("SELECT name_en FROM wp_custom_states WHERE state_code = '$shipping_selected_state'")->name_en;
  //$shipping_state_code     = sanitize_text_field(base64_decode($_POST['scode']));
  $shipping_city           = sanitize_text_field($_POST['customer_city']);
  $customer_phone2         = sanitize_text_field($_POST['customer_phone2']);
  $customer_note           = sanitize_text_field($_POST['customer_note']);
  $payment_method          = sanitize_text_field($_POST['payment_method']);
  $com_name_aft            = 'عمولة 10%';
  $customer_order_data     = array(
    'first_name' => $customer_name,
    'email'      => $current_user->user_email,
    'phone'      => $customer_phone,
    'address_1'  => $customer_address,
    'city'       => $shipping_city,
    'state'      => $shipping_stored_state,
    'customer'   => $current_user->ID
  );
  // Now we create the order
  $order          = wc_create_order();
	$check_zero_prod= check_zero_commission($order->get_id(), $type);
  $quantity_error = tg_order_add_cart_items($type, $order);
  if(empty($quantity_error)){
    //Get selected state shipping cost
    $shipping_cost = tg_get_shipping_cost_per_state($shipping_selected_state);
    if($type == 'kata3y'){
      $tg_fees  = $real_cod * 0.1;
			if($check_zero_prod){
				$tg_fees  = 0;
				update_post_meta($order->get_id(), 'tg_zero_fees', 'excluded_products');
			}
    }elseif($type == 'gomla'){
      $subtotal_shipping = $cart_total + $shipping_cost;
      //$tg_fees           = $subtotal_shipping * 0.1;
      //$real_cod          = $tg_fees + $subtotal_shipping;
      $real_cod = $subtotal_shipping;
    }
    $apply_coupon = wc_apply_coupons($wpdb, $order, $shipping_cost, $tg_fees);
		//exit;
    if(!empty($apply_coupon)){
      if(isset($apply_coupon['tg_fees'])){
        $tg_fees       = $apply_coupon['tg_fees'];
      }
      if(isset($apply_coupon['shipping_cost'])){
        $shipping_cost = $apply_coupon['shipping_cost'];
      }
      if(isset($apply_coupon['com_name_aft'])){
        $com_name_aft  = $apply_coupon['com_name_aft'];
      }
      $shipp_value     = $apply_coupon['shipp_value'];
    }
    if(in_array($current_user->ID, excludes_users_from_shipping_tgfees)){
      $real_cod      = $real_cod - $shipping_cost;
      $tg_fees       = 0;
      $shipping_cost = 0;
			update_post_meta($order->get_id(), 'tg_zero_fees', 'excluded_users');
    }
    // echo '<pre>';
    // var_dump($shipping_cost);
    // echo '</pre>';
    // exit;
    //Apply Shipping
    tg_apply_shipping($shipp_value, $shipping_cost, $shipping_selected_state, $order);
    if($type == 'kata3y'){
      //Apply Fees in case kata3y
      tg_apply_fees($com_name_aft, $tg_fees, $order);
    }
    //Save real_cod at billing_cod before make pay by wallet and empty the real_cod due the wallet transaction
    $billing_cod = $real_cod;
    //Apply Payment Method
    if($payment_method == 'wallet_gateway'){
      $wallet = get_customer_transactions_by_id($current_user->ID);
      if($wallet < $real_cod){
        $payment_method = 'cod';
        $method_title   = 'الدفع عند الاستلام';
      }else{
        $payment_method = 'wallet_gateway';
        $method_title   = 'محفظة';
        if(!empty($billing_cod) && $billing_cod > 0){
          $insert_wallet  = tg_insert_wallet_transaction($order->get_id(), $billing_cod, $current_user->ID);
          if($insert_wallet){
            $real_cod = 0;
          }
        }
      }
    }else{
      $method_title   = 'الدفع عند الاستلام';
      $payment_method = 'cod';
    }
    $order->set_payment_method($payment_method);
    $order->reduce_order_stock();
    // echo '<pre>';
    // var_dump($billing_cod);
    // var_dump($real_cod);
    // var_dump($payment_method);
    // echo '</pre>';
    // exit;
    //save needed order data
		$headers = 'From: info@egy2d.com \r\n Reply-To: info@egy2d.com \r\n';
    if($billing_cod > 0){
      $order->update_status("processing", '', false);
    }else{
      $order->update_status("cancelled", 'cancelled because billing_cod < 0', false);
			//wp_mail('m.alaa@egy2d.com', 'Order Cancellation', 'Order #'.$order->get_id().' cancelled because billing_cod < 0', $headers);
    }
		if(!isset($tg_fees) || $tg_fees == 0){
			//$order->update_status("cancelled", 'cancelled because fees <= 0', false);
			//wp_mail('m.alaa@egy2d.com', ' Order Fees Issue', 'Order #'.$order->get_id().' fees <= 0', $headers); //cancelled because
			if(empty(get_post_meta($order->get_id(), 'tg_zero_fees', true))){
				if(empty($billing_cod) || empty($real_cod)){
					update_post_meta($order->get_id(), 'tg_zero_fees', 'zero_cod');
				}else{
					update_post_meta($order->get_id(), 'tg_zero_fees', 'unknown_reason');
				}
			}
		}
    $order->set_address($customer_order_data, 'billing');
    update_post_meta($order->get_id() , 'billing_cod', $billing_cod);
    update_post_meta($order->get_id() , '_billing_phone_2', $customer_phone2);
    update_post_meta($order->get_id() , 'call_verify_value', 'yes');
    update_post_meta($order->get_id(), '_payment_method_title', $method_title);
    update_post_meta($order->get_id() , '_customer_user', $current_user->ID);
    update_post_meta($order->get_id() , 'real_cod', $real_cod);
    update_post_meta($order->get_id() , 'customer_notes', $customer_note);
    update_post_meta($order->get_id() , 'order_type', $type);
    //Empty cart & cookies & redirect to thank you page
    // WC()->cart->empty_cart();
		// var_dump($tg_fees);
		// exit;
    tg_unset_cookies(); 
    wp_redirect(home_url('/thank-you/?id='.base64_encode($order->get_id())));
  }else{
    wp_redirect(home_url('/cart/?error=less_than_12'));
    exit;
  }
}
//add custom menus
add_action('init','custom_menu');
