<?php /* Template Name: contact */ ?>
<?php get_header();?>
<?php include_once 'parts/navbar.php'; $current_page_id = get_the_id();?>
<!-- Masthead-->
<header class="masthead">
    <div class="container">
      <div class="masthead-subheading"><?php echo get_the_title();?></div>
      <!-- <div class="masthead-heading text-uppercase">It's Nice To Meet You</div> -->
    </div>
</header>
<!-- Contact-->
<section class="page-section" id="contact">
  <div class="container">
      <form id="contactForm" method="post">
          <div class="row align-items-stretch mb-5">
              <div class="col-md-6">
                  <div class="form-group">
                      <!-- Name input-->
                      <input class="form-control" id="name" type="text" name="contact_name" placeholder="Your Name *" required/>
                  </div>
                  <div class="form-group">
                      <!-- Email address input-->
                      <input class="form-control" id="email" type="email" name="contact_email" placeholder="Your Email *" required/>
                  </div>
                  <div class="form-group mb-md-0">
                      <!-- Phone number input-->
                      <input class="form-control" id="phone" type="tel" name="contact_phone" placeholder="Your Phone *" required />
                  </div>
              </div>
              <div class="col-md-6">
                  <div class="form-group form-group-textarea mb-md-0">
                      <!-- Message input-->
                      <textarea class="form-control" id="message" name="contact_message" placeholder="Your Message *" required></textarea>
                  </div>
              </div>
          </div>
          <!-- Submit Button-->
          <input type="hidden" id="nonce" name="nonce" value="<?php echo wp_create_nonce('contact_form_nonce');?>">
          <div class="text-center"><button class="btn btn-primary btn-xl text-uppercase" id="submitButton" type="submit">Send Message</button></div>
      </form>
  </div>
</section>
<?php get_footer();?>
<script>
jQuery(function ($) {
  $('#contactForm').on('submit', function (e) {
    e.preventDefault();
    $.ajax({
    type: 'post',
    url: '<?php echo get_template_directory_uri();?>/ajax/submit_contact_form.php',
    data: $('form').serialize(),
    success: function (response) {
      if(response.code == 200){
        $('#contactForm')[0].reset();
        alert('Data Sent successfully.');
      }else if(response.code == 402){
        alert('Sorry, there are some problems sending data, please try again later!');
      }
    }
    });
  });
});
</script>
