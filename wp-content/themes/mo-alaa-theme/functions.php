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
//add custom menus
add_action('init','custom_menu');
