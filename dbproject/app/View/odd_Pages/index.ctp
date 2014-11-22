<?php
/**
 *
 *
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.View.Pages
 * @since         CakePHP(tm) v 0.10.0.1076
 */
$this->set('title_for_layout', "Schneider Electric");
?>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="jQuery Responsive Carousel - Owl Carusel">
<meta name="author" content="Bartosz Wojciechowski">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,400,300,600,700' rel='stylesheet' type='text/css'>

<?php echo $this->Html->css('bootstrapTheme.css'); ?>
<?php echo $this->Html->css('custom.css'); ?>

<!-- Owl Carousel Assets -->
<?php echo $this->Html->css('owl.carousel.css'); ?>
<?php echo $this->Html->css('owl.theme.css'); ?>
<?php echo $this->Html->css('prettify.css'); ?>

 <!-- Le fav and touch icons -->
 <link rel="shortcut icon" href="image/favicon.ico">
  <body>
      <div id="top-nav" class="navbar navbar-fixed-top">
        <div class="navbar-inner">
          <div class="container">
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
            <div class="nav-collapse collapse">
            <ul class="nav pull-right">
              <li><a href="">Login</a></li>
              <li><a href="">Register</a></li>
              <li><a href="">Contact Us</a></li>
              <li><a href="">About</a></li>
            </ul>
            <ul class="nav pull-left">
              <li><?php echo $this->Html->image('se_logo.gif'); ?></li>
            </ul>
            </div>
          </div>
        </div>
      </div>

    <div id="title">
      <div class="container">
        <div class="row">
          <div class="span12">
            <h1>Schneider Electric</h1>
          </div>
        </div>
      </div>
    </div>

      <div id="demo">
        <div class="container">
          <div class="row">
            <div class="span12">
              <div id="owl-demo" class="owl-carousel">
                <div class="item"><?php echo $this->Html->image('slide1.png', array('alt' => 'The Last of us')); ?></div>
                <div class="item"><?php echo $this->Html->image('slide2.jpg', array('alt' => 'The Last of us')); ?></div>
                <div class="item"><?php echo $this->Html->image('slide3.png', array('alt' => 'The Last of us')); ?></div>
              </div>
            </div>
          </div>
        </div>
    </div>

  


    <div id="footer">

      <footer>
        <p>&copy; 2014 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer>
      
    </div>

    <?php echo $this->Html->script('jquery-1.9.1.min')?>
    <?php echo $this->Html->script('owl.carousel')?>
  

    <!-- Demo -->

    <style>
    #owl-demo .item img{
        display: block;
        width: 100%;
        height: auto;
    }
    </style>


    <script>
    $(document).ready(function() {
      $("#owl-demo").owlCarousel({

      navigation : true,
      slideSpeed : 300,
      paginationSpeed : 400,
      singleItem : true

      // "singleItem:true" is a shortcut for:
      // items : 1, 
      // itemsDesktop : false,
      // itemsDesktopSmall : false,
      // itemsTablet: false,
      // itemsMobile : false

      });
    });
    </script>
    <?php echo $this->Html->script('bootstrap-collapse')?>
    <?php echo $this->Html->script('bootstrap-transition')?>
    <?php echo $this->Html->script('bootstrap-tab')?>
    <?php echo $this->Html->script('prettify')?>
    <?php echo $this->Html->script('application')?>
  </body>



