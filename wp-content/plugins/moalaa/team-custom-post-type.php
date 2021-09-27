<?php
if ( ! defined( 'ABSPATH' ) ) {
 die( 'You are not allowed to call this page directly.' );
}
// Team Members Custom Post Type
function team_members_init() {
    // set up project labels
    $labels = array(
        'name'               => 'Team Members',
        'singular_name'      => 'Team Member',
        'add_new'            => 'Add New Team Member',
        'add_new_item'       => 'Add New Team Member',
        'edit_item'          => 'Edit Team Member',
        'new_item'           => 'New Team Member',
        'all_items'          => 'All Team Members',
        'view_item'          => 'View Team Member',
        'search_items'       => 'Search Team Members',
        'not_found'          =>  'No Team Members Found',
        'not_found_in_trash' => 'No Team Members found in Trash',
        'parent_item_colon'  => '',
        'menu_name'          => 'Team Members',
    );

    // register post type
    $args = array(
        'labels'          => $labels,
        'public'          => true,
        'has_archive'     => true,
        'show_ui'         => true,
        'capability_type' => 'post',
        'hierarchical'    => false,
        'rewrite'         => array('slug' => 'team_members'),
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
    register_post_type('team_members', $args);
    // register taxonomy
    //register_taxonomy('Team Members_category', 'project', array('hierarchical' => true, 'label' => 'Category', 'query_var' => true, 'rewrite' => array( 'slug' => 'project-category' )));
}
add_action('init', 'team_members_init');

//01- Register Project MetaBox Start
function add_team_metabox(){
	// echo '<pre>';
	// var_dump();
	// echo '</pre>';
	if(get_post_type() == 'team_members'){
		add_meta_box(
			'team_metabox', // Unique ID of metabox
			esc_html__('Team Member MetaData', 'moalaa'), //Title of metabox
			'team_metaboxes', // Callback function
			'team_members', //name of your custom post type (here post is for wordpress posts.)
			'normal', //Context
			'default' //Priority
		);
	}
}
add_action('add_meta_boxes', 'add_team_metabox');
//01- Register Project MetaBox End
//02- project Metaboxes Html Start
function team_metaboxes($object, $box){
  wp_nonce_field ( basename ( __FILE__ ), 'team_metaboxes' );
  global $post;
  ?>
  <div id="custom-project-section">
    <div class="custom-project-container">
    	<?php
  		$team_member_title     = get_post_meta(get_the_ID(), 'team_member_title', true);
      $team_member_facebook  = get_post_meta(get_the_ID(), 'team_member_facebook', true);
      $team_member_twitter   = get_post_meta(get_the_ID(), 'team_member_twitter', true);
      $team_member_linkedin  = get_post_meta(get_the_ID(), 'team_member_linkedin', true);
    	?>
      <div class="project-wrapper">
  			<div class="form-group">
          <label style="font-weight: bold;">Team Member Title</label>
          <input type="text" name="team_member_title" value="<?php echo $team_member_title;?>" style="display: inline-block;width: 100%;">
        </div>
        <div class="form-group">
          <label style="font-weight: bold;">Facebook</label>
          <input type="url" name="team_member_facebook" value="<?php echo $team_member_facebook;?>" style="display: inline-block;width: 100%;">
        </div>
        <div class="form-group">
          <label style="font-weight: bold;">Twitter</label>
          <input type="url" name="team_member_twitter" value="<?php echo $team_member_twitter;?>" style="display: inline-block;width: 100%;">
        </div>
        <div class="form-group">
          <label style="font-weight: bold;">Facebook</label>
          <input type="url" name="team_member_linkedin" value="<?php echo $team_member_linkedin;?>" style="display: inline-block;width: 100%;">
        </div>
  		</div>
    </div>
  </div>
  <?php
}
//02- project Metaboxes Html End
//03- Save Metadata For About Section Start
function save_team_metadata( $post_id, $post ){
    // var_dump($_POST['featured_team_disabled']);
    // exit;
    /* Verify the nonce before proceeding. */
    if ( !isset( $_POST['team_metaboxes'] ) || !wp_verify_nonce( $_POST['team_metaboxes'], basename( __FILE__ ) ) )
    return $post_id;
    /* Get the post type object. */
    $post_type = get_post_type_object( $post->post_type );
    /* Check if the current user has permission to edit the post. */
    if ( !current_user_can( $post_type->cap->edit_post, $post_id ) )
    return $post_id;
    /* Update the meta value for spicific keys. */
    update_post_meta($post_id, 'team_member_title', sanitize_text_field($_POST['team_member_title']));
    update_post_meta($post_id, 'team_member_facebook', sanitize_text_field($_POST['team_member_facebook']));
    update_post_meta($post_id, 'team_member_twitter', sanitize_text_field($_POST['team_member_twitter']));
    update_post_meta($post_id, 'team_member_linkedin', sanitize_text_field($_POST['team_member_linkedin']));
}
add_action('save_post', 'save_team_metadata', 10, 2);
//03- Save Metadata For About Section End
