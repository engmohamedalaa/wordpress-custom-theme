<?php /* Template Name: home */ ?>
<?php get_header();?>
<?php include_once 'parts/navbar.php'; $current_page_id = get_the_id();?>
<!-- Masthead-->
<?php
$slides = wpdb_get_all_meta('hero_image_src', $current_page_id);
?>
<!--Hero slider start-->
<section class="page-section" id="hero-slider" style="padding-top:0px;">
  <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
    <?php
    if(!empty($slides)){
      $count = 0;
      foreach($slides as $slide){
        if($count == 0){
          $active = 'active';
        }else{
          $active = '';
        }
        ?>
        <button type="button" data-bs-target="#carouselExampleIndicators"
        data-bs-slide-to="<?php echo $count;?>" class="<?php echo $active;?>"
        aria-current="true" aria-label="Slide <?php echo $count;?>">
        </button>
        <?php
      }
    }
    ?>
    </div>
    <div class="carousel-inner">
    <?php
    if(!empty($slides)){
      $count = 0;
      foreach($slides as $slide){
        if($count == 0){
          $active = 'active';
        }else{
          $active = '';
        }
        ?>
        <div class="carousel-item <?php echo $active;?>">
          <img src="<?php echo $slide->meta_value;?>" class="d-block w-100" alt="" style="height: 650px;">
        </div>
        <?php
        $count++;
      }
    }
    ?>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
</section>
<!--Hero slider end-->
<!-- About-->
<section class="page-section" id="about">
    <div class="container">
        <div class="text-center">
            <h2 class="section-heading text-uppercase"><?php echo get_post_meta($current_page_id, 'about_section_title', true);?></h2>
            <h3 class="section-subheading text-muted"><?php echo get_post_meta($current_page_id, 'about_section_content', true);?></h3>
        </div>
    </div>
</section>
<!--Portfolio end-->
<section class="page-section bg-light" id="portfolio">
    <div class="container">
        <div class="text-center">
            <h2 class="section-heading text-uppercase">Portfolio</h2>
            <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
        </div>
        <div class="row">
        <?php
        $projects = get_featured_projects();
        if(!empty($projects)){
          foreach($projects as $project){
            $project_categories = wp_get_object_terms($project->post_id, 'project_category');
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
                        <img class="img-fluid" src="<?php echo get_the_post_thumbnail_url($project->post_id);?>" alt="<?php echo $project->post_title;?>" />
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
<!-- Clients-->
<section id="latest_news" style="padding: 0rem 0;">
  <div class="py-5">
      <div class="container">
          <div class="text-center">
              <h2 class="section-heading text-uppercase">Latest News</h2>
              <!-- <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3> -->
          </div>
          <div class="row align-items-center">
          <?php
          $latest_news = get_latest_news(4);
          if(!empty($latest_news)){
            foreach($latest_news as $single_news){
              ?>
              <div class="col-md-3 col-sm-6 my-3">
                  <a href="#!">
                    <img class="img-fluid img-brand d-block mx-auto" src="<?php echo get_the_post_thumbnail_url($single_news->ID);?>" alt="<?php echo $single_news->post_title;?>" />
                    <div class="single-news-box">
                      <h5><?php echo $single_news->post_title;?></h5>
                      <p><?php echo date("Y-m-d h:i A", strtotime($single_news->post_date));?></p>
                    </div>
                  </a>
              </div>
              <?php
            }
          }
          ?>
          </div>
      </div>
  </div>
</section>
<?php get_footer();?>
