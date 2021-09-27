<?php get_header();?>
<?php include_once 'parts/navbar.php'; $current_page_id = get_the_id();?>
<!-- Masthead-->
<header class="masthead">
    <div class="container">
      <!-- <div class="masthead-subheading">Welcome To Our Studio!</div>
      <div class="masthead-heading text-uppercase">It's Nice To Meet You</div> -->
    </div>
</header>
<section id="page-404">
  <div class="container">
    <div class="text-center">
        <h2 class="section-heading text-uppercase"><?php echo get_the_title();?></h2>
    </div>
    <div class="row">
      <div class="col-md-12 text-center">
        <h1>404</h1>
        <h2>Sorry, Page Not Found!</h2>
      </div>
    </div>
  </div>
</section>
<?php get_footer();?>
