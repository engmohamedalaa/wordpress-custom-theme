<?php
if ( ! defined( 'ABSPATH' ) ) {
 die( 'You are not allowed to call this page directly.' );
}
//01- Register About MetaBox Start
function add_about_page_metabox(){
	$template_file = get_post_meta(get_the_ID(), '_wp_page_template', true);
	// echo '<pre>';
	// var_dump($template_file);
	// echo '</pre>';
	if($template_file == 'about.php'){
		add_meta_box(
			'about_page_metabox', // Unique ID of metabox
			esc_html__('About Page Data', 'moalaa'), //Title of metabox
			'about_page_metaboxes', // Callback function
			'page', //name of your custom post type (here post is for wordpress posts.)
			'normal', //Context
			'default' //Priority
		);
	}
}
add_action('add_meta_boxes', 'add_about_page_metabox');
//01- Register About MetaBox End
//02- About Page Metaboxes Html Start
function about_page_metaboxes($object, $box){
  wp_nonce_field ( basename ( __FILE__ ), 'about_page_metaboxes' );
  global $post;
  ?>
  <div id="custom-about-section">
    <div class="custom-about-container">
    	<?php
  		$about_page_right_content = get_post_meta(get_the_ID(), 'about_page_right_content', true);
      $about_page_left_content  = get_post_meta(get_the_ID(), 'about_page_left_content', true);
    	?>
      <div class="about-wrapper">
        <div class="form-group">
          <label style="font-weight: bold;">About Right content</label>
          <textarea class="form-control" name="about_page_right_content" style="display: inline-block;width: 100%;"><?php echo $about_page_right_content;?></textarea>
        </div>
        <div class="form-group">
          <label style="font-weight: bold;">About Left content</label>
          <textarea class="form-control" name="about_page_left_content" style="display: inline-block;width: 100%;"><?php echo $about_page_left_content;?></textarea>
        </div>
  		</div>
    </div>
  </div>
  <?php
}
//02- About Page Metaboxes Html End
//03- Save Metadata For About Section Start
function save_about_page_metadata( $post_id, $post ){
    // var_dump(wp_verify_nonce( $_POST['about_page_metaboxes'] ));
    // exit;
    /* Verify the nonce before proceeding. */
    if ( !isset( $_POST['about_page_metaboxes'] ) || !wp_verify_nonce( $_POST['about_page_metaboxes'], basename( __FILE__ ) ) )
    return $post_id;
    /* Get the post type object. */
    $post_type = get_post_type_object( $post->post_type );
    /* Check if the current user has permission to edit the post. */
    if ( !current_user_can( $post_type->cap->edit_post, $post_id ) )
    return $post_id;
    /* Update the meta value for spicific keys. */
    update_post_meta($post_id, 'about_page_right_content', sanitize_text_field($_POST['about_page_right_content']));
    update_post_meta($post_id, 'about_page_left_content', sanitize_text_field($_POST['about_page_left_content']));
}
add_action('save_post', 'save_about_page_metadata', 10, 2);
//03- Save Metadata For About Section End
