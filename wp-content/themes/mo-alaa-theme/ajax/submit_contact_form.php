<?php
require_once '../../../../wp-load.php';
header('Content-Type: application/json; charset=utf-8');
$response = array(
  'message' => 'Error',
  'code'    => 401
);
if(!wp_verify_nonce($_POST['nonce'], 'contact_form_nonce')){
  $response = array(
    'result'  => '',
    'message' => 'Sorry, Auth Failed!',
    'code'    => 402
  );
}else{
  $submit_data = array(
    'contact_name'    => sanitize_text_field($_POST['contact_name']),
    'contact_email'   => sanitize_text_field($_POST['contact_email']),
    'contact_phone'   => sanitize_text_field($_POST['contact_phone']),
    'contact_message' => sanitize_text_field($_POST['contact_message'])
  );
  $submit = save_data_into('wp_contacts_list', $submit_data);
  // echo '<pre>';
  // var_dump($submit);
  // echo '</pre>';
  if(!empty($submit)){
    $to      = get_option('admin_email');
    $subject = 'Contact Request From '.get_option('blogname'); 
    $body    = "
    Contact Request From: {$submit_data['contact_name']}
    With Email: {$submit_data['contact_email']}
    And Phone No: {$submit_data['contact_phone']} <br>
    Message: {$submit_data['contact_message']}";
    $headers = array('Content-Type: text/html; charset=UTF-8');
    wp_mail( $to, $subject, $body, $headers );
    $response = array(
      'message' => 'Done',
      'code'    => 200
    );
  }
}
echo json_encode($response);
