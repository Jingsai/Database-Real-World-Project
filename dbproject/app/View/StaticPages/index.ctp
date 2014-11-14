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

<?php echo $this->Html->meta(
  array('name'=>'viewport', 'content'=>'width=device-width, initial-scale=1.0'));
?>
<?php echo $this->Html->meta(
  array('name'=>'description', 'content'=>'jQuery Responsive Carousel - Owl Carusel'));
?>
<?php echo $this->Html->meta(
  array('name'=>'author', 'content'=>'Bartosz Wojciechowski'));
?>

<?php echo $this->Html->css('http://fonts.googleapis.com/css?family=Open+Sans:400italic,400,300,600,700'); ?>
<?php echo $this->Html->css('bootstrapTheme'); ?>
<?php echo $this->Html->css('custom'); ?>

<!-- Owl Carousel Assets -->
<?php echo $this->Html->css('owl.carousel'); ?>
<?php echo $this->Html->css('owl.theme'); ?>
<?php echo $this->Html->css('prettify'); ?>

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
<table>
              <li><?php echo $this->Html->link('Login',array('controller' => 'users','action' => 'login'));?></li>
              <!--<li><a href="">Login</a></li>-->
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
        <p>&copy; 2014 Company, Inc. &middot; <a href="#" style="color:#32cd32">Privacy</a> &middot; <a href="#" style="color:#32cd32">Terms</a></p>
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



