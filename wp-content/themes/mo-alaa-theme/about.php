<?php /* Template Name: about */ ?>
<?php get_header();?>
<?php include_once 'parts/navbar.php'; $current_page_id = get_the_id();?>
<?php
$about_page_right_content = get_post_meta($current_page_id, 'about_page_right_content', true);
$about_page_left_content  = get_post_meta($current_page_id, 'about_page_left_content', true);
?>
<!-- Masthead-->
<header class="masthead">
    <div class="container">
      <!-- <div class="masthead-subheading">Welcome To Our Studio!</div>
      <div class="masthead-heading text-uppercase">It's Nice To Meet You</div> -->
    </div>
</header>
<section>
  <div class="container">
    <div class="text-center">
        <h2 class="section-heading text-uppercase"><?php echo get_the_title();?></h2>
    </div>
    <div class="row">
      <div class="col-md-6">
        <div class="content">
          <p>
            <?php echo $about_page_right_content;?>
          </p>
        </div>
      </div>
      <div class="col-md-6">
        <div class="content">
          <p>
            <?php echo $about_page_left_content;?>
          </p>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Team-->
<section class="page-section bg-light" id="team">
    <div class="container">
        <div class="text-center">
            <h2 class="section-heading text-uppercase">Our Amazing Team</h2>
            <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
        </div>
        <div class="row" id="team_members_response">
        <?php
        $all_count    = count_all_by_post_type('team_members');
        $team_members = get_team_members(0, 3);
        if(!empty($team_members)){
          foreach($team_members as $team_member){
            ?>
            <div class="col-lg-4">
                <div class="team-member">
                    <img class="mx-auto rounded-circle" src="<?php echo get_the_post_thumbnail_url($team_member->ID);?>" alt="<?php echo $team_member->post_title;?>" />
                    <h4><?php echo $team_member->post_title;?></h4>
                    <p class="text-muted"><?php echo get_post_meta($team_member->ID, 'team_member_title', true);?></p>
                    <a class="btn btn-dark btn-social mx-2" href="<?php echo get_post_meta($team_member->ID, 'team_member_facebook', true);?>"><i class="fab fa-twitter"></i></a>
                    <a class="btn btn-dark btn-social mx-2" href="<?php echo get_post_meta($team_member->ID, 'team_member_twitter', true);?>"><i class="fab fa-facebook-f"></i></a>
                    <a class="btn btn-dark btn-social mx-2" href="<?php echo get_post_meta($team_member->ID, 'team_member_linkedin', true);?>"><i class="fab fa-linkedin-in"></i></a>
                </div>
            </div>
            <?php
          }
        }
        ?>
        </div>
        <div class="row">
            <div class="col-lg-8 mx-auto text-center">
              <button id="load_more_team_members" class="btn btn-primary">Load More</button>
              <input type="hidden" id="row_no" value="0">
              <input type="hidden" id="all_count" value="<?php echo $all_count; ?>">
              <input type="hidden" id="nonce" value="<?php echo wp_create_nonce('about_fetch_team_members_nonce');?>">
            </div>
        </div>
    </div>
</section>
<?php get_footer();?>
<script>
jQuery(document).ready(function($){
  // Load more data
  $('#load_more_team_members').click(function(){
        var row_no     = Number($('#row_no').val());
        var allcount   = Number($('#all_count').val());
        var rowperpage = 3;
        if(row_no <= allcount){
          row_no         = row_no + rowperpage;
          $("#row_no").val(row_no);
          $.ajax({
              url: '<?php echo get_template_directory_uri();?>/ajax/fetch_team_members.php',
              type: 'post',
              data: {
                row_no:row_no,
                nonce: $('#nonce').val()
              },
              beforeSend:function(){
                $("#load_more_team_members").text("Loading...");
              },
              success: function(response){
                //alert(response.code);
                if(response.code == 200){
                  // Setting little delay while displaying new content
                  setTimeout(function() {
                    // appending posts after last post with class="post"
                    $("#team .col-lg-4:last").after(response.result).show().fadeIn("slow");
                    //$( response.result ).appendTo( ".inner" );
                    var rowno = row_no + rowperpage;
                    // checking row value is greater than allcount or not
                    // if(rowno > allcount){
                    //     // Change the text and background
                    //     //$('#load_more_team_members').text("Hide");
                    //     //$('#load_more_team_members').css("background","darkorchid");
                    //     $("#load_more_team_members").text("Load more");
                    // }else{
                    //     $("#load_more_team_members").text("Load more");
                    // }
                    $("#load_more_team_members").text("Load more");
                  }, 2000);
                }else if(response.code == 401){
                  $("#load_more_team_members").text("Load more");
                  alert('Sorry, There Is No Another Results!');
                }
              }
          });
        }else{
            $('#load_more_team_members').text("Loading...");
            // Setting little delay while removing contents
            // setTimeout(function() {
            //     // When row is greater than allcount then remove all class='post' element after 3 element
            //     $('#team .col-lg-4:nth-child(3)').nextAll('#team .col-lg-4').remove();
            //     // Reset the value of row
            //     $("#row_no").val(0);
            //     // Change the text and background
            //     $('#load_more_team_members').text("Load more");
            //     $('#load_more_team_members').css("background","#15a9ce");
            // }, 2000);
        }
    });
});
</script>
