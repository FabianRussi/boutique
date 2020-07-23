 {{log this}}
<script>
      var homeScrollTop = $(window).scrollTop();

      var homeWindowWidth = $(window).width();
      $(".attached-bg-special-1").css(
        "width",
        homeScrollTop + homeWindowWidth * 0.8
      );
      $(window).scroll(function () {
        //window variables
        var homeScrollTop = $(this).scrollTop();
        var homeWindowWidth = $(this).width();
        var homeOpacityCalculation =
          ($(".after-effects-content").offset().top - $(this).scrollTop()) /
          1000;

        if (homeScrollTop <= 420) {
          $("#attached-bg-special-container").css("position", "absolute");
          $("#attached-bg-special-container").css("margin-top", "335px");
          $("#attached-bg-special-container").css("top", "auto");
          $(".main-text").css("display", 'flex');
          $("#attached-bg-special-container").css("opacity", 1);
          $(".attached-bg-special-2").css("display", "none");
          $(".attached-bg-special-1").css(
            "width",
            homeScrollTop + homeWindowWidth * 0.8
          );
        } else if (homeScrollTop >= 500) {
            $(".main-text").css("display", 'none');
          $("#attached-bg-special-container").css("position", "fixed");
          $("#attached-bg-special-container").css("top", "0");
          $("#attached-bg-special-container").css("margin-top", "0px");
          $("#attached-bg-special-container").css(
            "opacity",
            homeOpacityCalculation
          );
          $(".attached-bg-special-2").css("display", "block");
          //
          $(".attached-bg-special-2").css(
            "width",
            homeScrollTop * 1.2 + homeWindowWidth * 0.5
          );

          if (homeOpacityCalculation <= 0) {
            $("#attached-bg-special-container").css("display", "none");
          } else {
            $("#attached-bg-special-container").css("display", "flex");
          }
        }
      });
    </script>

<div class=" container-fluid home-page-wrapper">
      <!-- CMS - title -->
      <section data-cms-area="sdb-chivas_home_cms_area" data-cms-area-filters="path"></section>
      
      <!--special home imgs effect-->
      <div id="attached-bg-special-container">
        <div
          class="attached-bg-special-1"
          style="
            background-image: url(http://sdb-chivas.website/boutique-img/Home/boutique-home-1.jpg);
          "
        ></div>
        <div
          class="attached-bg-special-2"
          style="
            background-image: url(http://sdb-chivas.website/boutique-img/Home/boutique-home-2.jpg);
          "
        ></div>
      </div>

      <div class="container-fluid after-effects-content">
      <!-- CMS - title 2 -->
      <section data-cms-area="sdb-chivas_home_cms_area_text_secondary" data-cms-area-filters="path"></section>

      <!-- CMS Items title -->
      <section data-cms-area="sdb-chivas_home_cms_area_collection_title" data-cms-area-filters="path"></section>
        
        <!--Dynamic images 1-->
        <div class="home-images-banners">
        {{#each bottomBannerImages}}
          <div class="home-image-banner">
            <a href="">
              <img
                src="{{resizeImage this ../imageHomeSize}}"
                alt=""
                class="img-responsive"
              />
            </a>
          </div>
        {{/each}}
        </div>
</div>

