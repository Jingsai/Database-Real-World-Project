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
 <body>
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
  </body>



