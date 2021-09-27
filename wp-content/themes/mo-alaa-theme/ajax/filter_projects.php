<?php
require_once '../../../../wp-load.php';
header('Content-Type: application/json; charset=utf-8');
if(!wp_verify_nonce($_POST['nonce'], 'mo_filter_projects_nonce')){
  $response = array(
    'result'  => '',
    'message' => 'Sorry, Auth Failed!',
    'code'    => 402
  );
}else{
  $client_name   = sanitize_text_field($_POST['client_name']);
  if(empty($client_name)){
    $projects = get_all_projects();
  }else{
    $projects = get_all_projects_by_client($client_name);
  }
  if(!empty($projects)){
    foreach($projects as $project){
      $project_categories = wp_get_object_terms($project->ID, 'project_category');
      $results .= '
      <div class="col-lg-4 col-sm-6 mb-4">
          <!-- Portfolio item 1-->
          <div class="portfolio-item">
              <a class="portfolio-link" data-bs-toggle="modal" href="#"> <!--portfolioModal1-->
                  <div class="portfolio-hover">
                      <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                  </div>
                  <img class="img-fluid" src="'.get_the_post_thumbnail_url($project->ID).'" alt="'.$project->post_title.'" />
              </a>
              <div class="portfolio-caption">
                  <div class="portfolio-caption-heading">'.$project->post_title.'</div>
                  <div class="portfolio-caption-subheading text-muted">';
                  if(!empty($project_categories)){
                    foreach($project_categories as $project_category){
                      $results .= '<span class="project-category-span">'.$project_category->name.'</span>';
                    }
                  }
                  $results .= '
                  </div>
              </div>
          </div>
      </div>
      ';
    }
  }
  if(!empty($results)){
    $response = array(
      'result'  => $results,
      'message' => 'Listed Success.',
      'code'    => 200
    );
  }else{
    $response = array(
      'result'  => '',
      'message' => 'Sorry, There Is No Results!',
      'code'    => 401
    );
  }
}
echo json_encode($response);
