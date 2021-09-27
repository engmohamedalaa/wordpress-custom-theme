<?php /* Template Name: projects */ ?>
<?php get_header();?>
<?php include_once 'parts/navbar.php'; $current_page_id = get_the_id();?>
<!-- Masthead-->
<header class="masthead">
    <div class="container">
      <!-- <div class="masthead-subheading">Welcome To Our Studio!</div>
      <div class="masthead-heading text-uppercase">It's Nice To Meet You</div> -->
    </div>
</header>
<section id="portfolio">
  <div class="container">
    <div class="text-center">
        <h2 class="section-heading text-uppercase"><?php echo get_the_title();?></h2>
        <form method="post" id="projects_filter" class="row">
          <div class="col-md-6 form-group">
            <label>Filter By Client</label>
            <select class="form-control" name="client_name">
              <option value="">Select Client</option>
              <?php
              $clients = get_all_projects_clients();
              //test_vars($clients);
              if(!empty($clients)){
                foreach($clients as $client){
                  echo '<option value="'.$client->meta_value.'">'.$client->meta_value.'</option>';
                }
              }
              ?>
            </select>
          </div>
          <!-- <div class="col-md-6 form-group">
            <label>Filter By Category</label>
            <select class="form-control" name="category">
              <?php
              // $categories = wp_list_categories(['taxonomy' => 'project_category', 'style' => 'list']);
              // test_vars($categories);
              ?>
            </select>
          </div> -->
          <div class="col-md-12 form-group">
            <input type="hidden" id="nonce" name="nonce" value="<?php echo wp_create_nonce('mo_filter_projects_nonce');?>">
            <button type="submit" class="btn btn-primary">Filter</button>
          </div>
        </form>
    </div>
    <div class="row" id="projects_response">
    <?php
    $projects = get_all_projects();
    if(!empty($projects)){
      foreach($projects as $project){
        $project_categories = wp_get_object_terms($project->ID, 'project_category');
        // echo '<pre>';
        // var_dump($project_categories);
        // echo '</pre>';
        ?>
        <div class="col-lg-4 col-sm-6 mb-4">
            <!-- Portfolio item 1-->
            <div class="portfolio-item">
                <a class="portfolio-link" data-bs-toggle="modal" href="#"> <!--portfolioModal1-->
                    <div class="portfolio-hover">
                        <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                    </div>
                    <img class="img-fluid" src="<?php echo get_the_post_thumbnail_url($project->ID);?>" alt="<?php echo $project->post_title;?>" />
                </a>
                <div class="portfolio-caption">
                    <div class="portfolio-caption-heading"><?php echo $project->post_title;?></div>
                    <div class="portfolio-caption-subheading text-muted">
                    <?php
                    if(!empty($project_categories)){
                      foreach($project_categories as $project_category){
                        echo '<span class="project-category-span">'.$project_category->name.'</span>';
                      }
                    }
                    ?>
                    </div>
                </div>
            </div>
        </div>
        <?php
      }
    }
    ?>
    </div>
  </div>
</section>
<?php get_footer();?>
<script>
jQuery(function ($) {
  $('#projects_filter').on('submit', function (e) {
    e.preventDefault();
    $.ajax({
    type: 'post',
    url: '<?php echo get_template_directory_uri();?>/ajax/filter_projects.php',
    data: $('form').serialize(),
    success: function (response) {
      if(response.code == 200){
        $('#projects_response').html(response.result);
      }else if(response.code == 402){
        alert('Sorry, there are some problems when filtering data, please try again later!');
      }
    }
    });
  });
});
</script>
