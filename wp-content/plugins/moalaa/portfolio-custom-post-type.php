<?php
if ( ! defined( 'ABSPATH' ) ) {
 die( 'You are not allowed to call this page directly.' );
}
// project Custom Post Type
function project_init() {
    // set up project labels
    $labels = array(
        'name'               => 'projects',
        'singular_name'      => 'project',
        'add_new'            => 'Add New project',
        'add_new_item'       => 'Add New project',
        'edit_item'          => 'Edit project',
        'new_item'           => 'New project',
        'all_items'          => 'All projects',
        'view_item'          => 'View project',
        'search_items'       => 'Search projects',
        'not_found'          =>  'No projects Found',
        'not_found_in_trash' => 'No projects found in Trash',
        'parent_item_colon'  => '',
        'menu_name'          => 'projects',
    );

    // register post type
    $args = array(
        'labels' => $labels,
        'public' => true,
        'has_archive' => true,
        'show_ui' => true,
        'capability_type' => 'post',
        'hierarchical'    => false,
        'rewrite'         => array('slug' => 'project'),
        'query_var'       => true,
        'menu_icon'       => 'dashicons-randomize',
        'supports'        => array(
            'title',
            'editor',
            'excerpt',
            'trackbacks',
            'custom-fields',
            'comments',
            'revisions',
            'thumbnail',
            'author',
            'page-attributes'
        )
    );
    register_post_type('project', $args);
    // register taxonomy
    register_taxonomy('project_category', 'project', array('hierarchical' => true, 'label' => 'Category', 'query_var' => true, 'rewrite' => array( 'slug' => 'project-category' )));
}
add_action('init', 'project_init');

//01- Register Project MetaBox Start
function add_project_metabox(){
	// echo '<pre>';
	// var_dump();
	// echo '</pre>';
	if(get_post_type() == 'project'){
		add_meta_box(
			'project_metabox', // Unique ID of metabox
			esc_html__('Project MetaData', 'moalaa'), //Title of metabox
			'project_metaboxes', // Callback function
			'project', //name of your custom post type (here post is for wordpress posts.)
			'normal', //Context
			'default' //Priority
		);
	}
}
add_action('add_meta_boxes', 'add_project_metabox');
//01- Register Project MetaBox End
//02- project Metaboxes Html Start
function project_metaboxes($object, $box){
  wp_nonce_field ( basename ( __FILE__ ), 'project_metaboxes' );
  global $post;
  ?>
  <div id="custom-project-section">
    <div class="custom-project-container">
    	<?php
  		$client_name      = get_post_meta(get_the_ID(), 'client_name', true);
      $delivery_date    = get_post_meta(get_the_ID(), 'delivery_date', true);
      $featured_project = get_post_meta(get_the_ID(), 'featured_project', true);
      if(empty($featured_project)){
        $featured_project = 0;
      }
    	?>
      <div class="project-wrapper">
        <div class="form-group">
          <style>
          .featured_project_disabled, .featured_project_enabled{
            width: 30px !important;
            height: 30px !important;
          }
          #project_metabox input[type="checkbox"]:checked::before {
              height: 2.313rem;
              width: 2.2rem;
          }
          #project_metabox input[type="checkbox"]:checked::before, #project_metabox input[type="radio"]:checked::before {float: unset;}
          </style>
          <label style="font-weight: bold;">Featured Project</label>
          <?php
          if($featured_project == 1){
            ?>
            <input class="featured_project_disabled" type="checkbox" name="featured_project_disabled" value="0" <?php if($featured_project == 1){echo 'checked';}?>>
            <?php
          }elseif($featured_project == 0){
            ?>
            <input class="featured_project_enabled" type="checkbox" name="featured_project_enabled" value="1">
            <?php
          }
          ?>
        </div>
  			<div class="form-group">
          <label style="font-weight: bold;">Client Name</label>
          <input type="text" name="client_name" value="<?php echo $client_name;?>" style="display: inline-block;width: 100%;">
        </div>
        <div class="form-group">
          <label style="font-weight: bold;">Delivery Date</label>
          <input type="date" name="delivery_date" value="<?php echo $delivery_date;?>" style="display: inline-block;width: 100%;">
        </div>
  		</div>
    </div>
  </div>
  <?php
}
//02- project Metaboxes Html End
//03- Save Metadata For About Section Start
function save_project_metadata( $post_id, $post ){
    // var_dump($_POST['featured_project_disabled']);
    // exit;
    /* Verify the nonce before proceeding. */
    if ( !isset( $_POST['project_metaboxes'] ) || !wp_verify_nonce( $_POST['project_metaboxes'], basename( __FILE__ ) ) )
    return $post_id;
    /* Get the post type object. */
    $post_type = get_post_type_object( $post->post_type );
    /* Check if the current user has permission to edit the post. */
    if ( !current_user_can( $post_type->cap->edit_post, $post_id ) )
    return $post_id;
    /* Update the meta value for spicific keys. */
    update_post_meta($post_id, 'client_name', sanitize_text_field($_POST['client_name']));
    update_post_meta($post_id, 'delivery_date', sanitize_text_field($_POST['delivery_date']));
    if($_POST['featured_project_disabled'] == NULL){
      update_post_meta($post_id, 'featured_project', 0);
    }
    if(isset($_POST['featured_project_enabled'])){
      update_post_meta($post_id, 'featured_project', 1);
    }
}
add_action('save_post', 'save_project_metadata', 10, 2);
//03- Save Metadata For About Section End
