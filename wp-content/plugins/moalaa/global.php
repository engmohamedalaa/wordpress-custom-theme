<?php
if ( ! defined( 'ABSPATH' ) ) {
 die( 'You are not allowed to call this page directly.' );
}
function wpdb_get_all_meta($meta_key, $post_id){
  global $wpdb;
  return $wpdb->get_results("SELECT meta_value FROM wp_postmeta WHERE meta_key = '$meta_key' AND post_id = $post_id");
  $wpdb->close();
}

function get_featured_projects(){
  global $wpdb;
  //return $wpdb->get_results("SELECT post_id FROM wp_postmeta WHERE meta_key = 'featured_project' AND meta_value = '1'");
  return $wpdb->get_results("SELECT post_id, post_title, post_excerpt, post_content FROM wp_posts AS wps INNER JOIN wp_postmeta AS wpm ON wps.ID = wpm.post_id WHERE post_type = 'project' AND post_status = 'publish' AND meta_key = 'featured_project' AND meta_value = 1");
}

function get_all_projects(){
  global $wpdb;
  return $wpdb->get_results("SELECT ID, post_title, post_excerpt, post_content FROM wp_posts WHERE post_type = 'project' AND post_status = 'publish'");
}
function get_latest_news($limit){
  global $wpdb;
  return $wpdb->get_results("SELECT ID, post_title, post_date FROM wp_posts WHERE post_type = 'post' AND post_status = 'publish' ORDER BY post_date LIMIT 0,$limit");
}

function get_team_members($start, $limit){
  global $wpdb;
  return $wpdb->get_results("SELECT ID, post_title FROM wp_posts WHERE post_type = 'team_members' AND post_status = 'publish' ORDER BY post_date LIMIT $start,$limit");
}

function count_all_by_post_type($post_type){
  global $wpdb;
  return (int)$wpdb->get_row("SELECT COUNT(ID) AS total_count FROM wp_posts WHERE post_type = '$post_type' AND post_status = 'publish'")->total_count;
}

function save_data_into($table, $data){
  global $wpdb;
  return $wpdb->insert($table, $data);
}

function get_all_projects_clients(){
  global $wpdb;
  return $wpdb->get_results("SELECT DISTINCT meta_value FROM wp_postmeta WHERE meta_key = 'client_name'");
}

function get_all_projects_by_client($client_name){
  global $wpdb;
  return $wpdb->get_results("SELECT post_id AS ID, post_title, post_excerpt, post_content FROM wp_posts AS wps INNER JOIN wp_postmeta AS wpm ON wps.ID = wpm.post_id WHERE post_type = 'project' AND post_status = 'publish' AND meta_key = 'client_name' AND meta_value = '{$client_name}'");
}

function test_vars($var){
  echo '<pre>';
  var_dump($var);
  echo '</pre>';
}
