<?php
require_once '../../../../wp-load.php';
header('Content-Type: application/json; charset=utf-8');
if(!wp_verify_nonce($_POST['nonce'], 'about_fetch_team_members_nonce')){
  $response = array(
    'result'  => '',
    'message' => 'Sorry, Auth Failed!',
    'code'    => 402
  );
}else{
  //$results      = array();
  $results      = '';
  $per_page     = 3;
  $row_no       = intval($_POST['row_no']);
  $all_count    = count_all_by_post_type('team_members');
  $team_members = get_team_members($row_no, $per_page);
  if(!empty($team_members)){
    $count = 0;
    foreach($team_members as $team_member){
      // $results[$count]['member_img_src']  = get_the_post_thumbnail_url($team_member->ID);
      // $results[$count]['member_name']     = $team_member->post_title;
      // $results[$count]['member_title']    = get_post_meta($team_member->ID, 'team_member_title', true);
      // $results[$count]['member_facebook'] = get_post_meta($team_member->ID, 'team_member_facebook', true);
      // $results[$count]['member_twitter']  = get_post_meta($team_member->ID, 'team_member_twitter', true);
      // $results[$count]['member_linkedin'] = get_post_meta($team_member->ID, 'team_member_linkedin', true);
      $results .= '
      <div class="col-lg-4">
          <div class="team-member">
              <img class="mx-auto rounded-circle" src="'.get_the_post_thumbnail_url($team_member->ID).'" alt="'.$team_member->post_title.'" />
              <h4>'.$team_member->post_title.'</h4>
              <p class="text-muted">'.get_post_meta($team_member->ID, 'team_member_title', true).'</p>
              <a class="btn btn-dark btn-social mx-2" href="'.get_post_meta($team_member->ID, 'team_member_facebook', true).'"><i class="fab fa-twitter"></i></a>
              <a class="btn btn-dark btn-social mx-2" href="'.get_post_meta($team_member->ID, 'team_member_twitter', true).'"><i class="fab fa-facebook-f"></i></a>
              <a class="btn btn-dark btn-social mx-2" href="'.get_post_meta($team_member->ID, 'team_member_linkedin', true).'"><i class="fab fa-linkedin-in"></i></a>
          </div>
      </div>
      ';
      $count++;
    }
  }
  // echo '<pre>';
  // var_dump($row_no);
  // var_dump($all_count);
  // echo '<pre>';

  if(!empty($results)){
    $response = array(
      'result'  => $results,
      'message' => 'Listed Success.',
      'code'    => 200
    );
  }else{
    $response = array(
      'result'  => '',
      'message' => 'Sorry, There Is No Another Results!',
      'code'    => 401
    );
  }
}
echo json_encode($response);
