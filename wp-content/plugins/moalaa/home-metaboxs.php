<?php
if ( ! defined( 'ABSPATH' ) ) {
 die( 'You are not allowed to call this page directly.' );
}
//01- Register Uploader MetaBox Start
function add_image_uploader_metabox(){
	$template_file = get_post_meta(get_the_ID(), '_wp_page_template', true);
	// echo '<pre>';
	// var_dump($template_file);
	// echo '</pre>';
	if($template_file == 'index.php'){
		add_meta_box(
			'image_uploader_metabox', // Unique ID of metabox
			esc_html__('Hero Image Uploader', 'moalaa'), //Title of metabox
			'image_uploader_metaboxes', // Callback function
			'page', //name of your custom post type (here post is for wordpress posts.)
			'normal', //Context
			'default' //Priority
		);
	}
}
add_action('add_meta_boxes', 'add_image_uploader_metabox');
//01- Register Image Uploader MetaBox End
//02- Image Uploader Metaboxes Html Start
function image_uploader_metaboxes($object, $box){
  wp_nonce_field ( basename ( __FILE__ ), 'image_uploader_metaboxes' );
  global $post;
  // Get WordPress' media upload URL
  $upload_link = esc_url( get_upload_iframe_src() );
  // See if there's a media id already saved as post meta
  $your_img_id = get_post_meta( get_the_ID(), '_your_img_id', true );
  // Get the image src
  $your_img_src = wp_get_attachment_image_src( $your_img_id, 'full' );
  // For convenience, see if the array is valid
  $you_have_img = is_array( $your_img_src );
  ?>
  <div id="custom-images">
  <div class="custom-img-container">
  	<?php
  		$meta_values = get_post_meta( get_the_ID(), 'hero_image_src', false );
  		foreach ($meta_values as $value){
  	?>
  		<div class="image-wrapper">
  			<input type="text" name="hero_image_src[]" value="<?php echo $value;?>">
  			<a class="delete-custom-img" href="#">Remove this image</a>
  		</div>
  	<?php }?>
  </div>
  </div>
  <?php
    //if(empty(get_post_meta(get_the_id(), 'hero_image_src', true))){ ?>
    <p>
      <a class="upload-custom-img <?php if ( $you_have_img  ) { echo 'hidden'; } ?>" href="<?php echo $upload_link; ?>">
        <?php _e('Add custom image'); ?>
      </a>
    </p>
    <?php
    //}
  }
//02- image_uploader_metaboxes End
//03- Save Metadata For Uploader MetaBox Start
function save_image_uploader_metadata( $post_id, $post ){
    /* Verify the nonce before proceeding. */
    if ( !isset( $_POST['image_uploader_metaboxes'] ) || !wp_verify_nonce( $_POST['image_uploader_metaboxes'], basename( __FILE__ ) ) )
    return $post_id;
    /* Get the post type object. */
    $post_type = get_post_type_object( $post->post_type );
    /* Check if the current user has permission to edit the post. */
    if ( !current_user_can( $post_type->cap->edit_post, $post_id ) )
    return $post_id;
    /* Get the meta key. */
    $meta_key = 'hero_image_src';
    /* Get the meta value of the custom field key. */
    $meta_value = get_post_meta( $post_id, $meta_key, false );
    /* For looping all meta values */
    foreach ($meta_value as $value){
    delete_post_meta( $post_id, $meta_key, $value );
    }
    /* Get the posted data and sanitize it for use as an HTML class. */
    foreach($_POST['hero_image_src'] as $value){
    add_post_meta( $post_id, $meta_key, $value, false );
    }
}
add_action('save_post', 'save_image_uploader_metadata', 10, 2);
//03- Save Metadata For Uploader MetaBox End
//04- For Custom Image Uploader Start
function enqueue_media(){
	wp_enqueue_media();
}
add_action('admin_enqueue_scripts', 'enqueue_media');
//04- For Custom Image Uploader End
//05- JavaScript Code for opening uploader and copying the link of the uploaded image to a textbox Start
function include_js_code_for_uploader(){
?>
<script>
	jQuery(function($){
	  // Set all variables to be used in scope
	  var frame,
		  metaBox      = $('#image_uploader_metabox.postbox'); // Your meta box id here
		  addImgLink   = metaBox.find('.upload-custom-img');
		  imgContainer = metaBox.find('.custom-img-container');
		  imgIdInput   = metaBox.find('.custom-img-id');
		  customImgDiv = metaBox.find('#custom-images');
      console.log('ImageID:'+imgIdInput.length);
      console.dir(imgIdInput);
      // ADD IMAGE LINK
     addImgLink.on( 'click', function( event ){
     event.preventDefault();
		 // If the media frame already exists, reopen it.
		if(frame){
		  frame.open();
		  return;
		}
		// Create a new media frame
		frame = wp.media({
		  title: 'Select or Upload Media Of Your Chosen Hero Image',
		  button: {
			text: 'Use this media'
		  },
		  multiple: false  // Set to true to allow multiple files to be selected
		});
		// When an image is selected in the media frame...
		frame.on( 'select', function() {
		  // Get media attachment details from the frame state
		  var attachment = frame.state().get('selection').first().toJSON();
		  // Send the attachment URL to our custom image input field.
		  imgContainer.append( '<div class="image-wrapper"><input type="text" name="hero_image_src[]" value="'+attachment.url+'"> <a class="delete-custom-img" href="#">Remove this image</a></div>' );
		});
		// Finally, open the modal on click
		frame.open();
	  });
		customImgDiv.on('click', '.delete-custom-img', function (event){
			event.preventDefault();
			jQuery(event.target).parent().remove();
		});
	});
</script>
<?php }
add_action( 'admin_head', 'include_js_code_for_uploader' );
//05- JavaScript Code for opening uploader and copying the link of the uploaded image to a textbox End
