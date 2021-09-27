<?php
if ( ! defined( 'ABSPATH' ) ) {
 die( 'You are not allowed to call this page directly.' );
}
//01- Register About MetaBox Start
function add_about_metabox(){
	$template_file = get_post_meta(get_the_ID(), '_wp_page_template', true);
	// echo '<pre>';
	// var_dump($template_file);
	// echo '</pre>';
	if($template_file == 'index.php'){
		add_meta_box(
			'about_section_metabox', // Unique ID of metabox
			esc_html__('About Section', 'moalaa'), //Title of metabox
			'about_section_metaboxes', // Callback function
			'page', //name of your custom post type (here post is for wordpress posts.)
			'normal', //Context
			'default' //Priority
		);
	}
}
add_action('add_meta_boxes', 'add_about_metabox');
//01- Register About MetaBox End
//02- About Metaboxes Html Start
function about_section_metaboxes($object, $box){
  wp_nonce_field ( basename ( __FILE__ ), 'about_section_metaboxes' );
  global $post;
  ?>
  <div id="custom-about-section">
    <div class="custom-about-container">
    	<?php
  		$about_section_title   = get_post_meta(get_the_ID(), 'about_section_title', true);
      $about_section_content = get_post_meta(get_the_ID(), 'about_section_content', true);
    	?>
      <div class="about-wrapper">
  			<div class="form-group">
          <label style="font-weight: bold;">About Section title</label>
          <input type="text" name="about_section_title" value="<?php echo $about_section_title;?>" style="display: inline-block;width: 100%;">
        </div>
        <div class="form-group">
          <label style="font-weight: bold;">About Section content</label>
          <textarea class="form-control" name="about_section_content" style="display: inline-block;width: 100%;"><?php echo $about_section_content;?></textarea>
        </div>
  		</div>
    </div>
  </div>
  <?php
}
//02- About Metaboxes Html End
//03- Save Metadata For About Section Start
function save_about_section_metadata( $post_id, $post ){
    // var_dump(wp_verify_nonce( $_POST['about_section_metaboxes'] ));
    // exit;
    /* Verify the nonce before proceeding. */
    if ( !isset( $_POST['about_section_metaboxes'] ) || !wp_verify_nonce( $_POST['about_section_metaboxes'], basename( __FILE__ ) ) )
    return $post_id;
    /* Get the post type object. */
    $post_type = get_post_type_object( $post->post_type );
    /* Check if the current user has permission to edit the post. */
    if ( !current_user_can( $post_type->cap->edit_post, $post_id ) )
    return $post_id;
    /* Update the meta value for spicific keys. */

    update_post_meta($post_id, 'about_section_title', sanitize_text_field($_POST['about_section_title']));
    update_post_meta($post_id, 'about_section_content', sanitize_text_field($_POST['about_section_content']));
}
add_action('save_post', 'save_about_section_metadata', 10, 2);
//03- Save Metadata For About Section End
