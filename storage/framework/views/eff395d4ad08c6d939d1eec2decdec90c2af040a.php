<?php $__env->startSection('title','Welcome'); ?>
<?php $__env->startSection('main-wrapper'); ?>
<!-- main wrapper -->
  <section id="main-wrapper" class="main-wrapper home-page">
    <?php if(isset($blocks) && count($blocks) > 0): ?>
      <?php $__currentLoopData = $blocks; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $block): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <!-- home out section -->
        <div id="home-out-section-1" class="home-out-section" style="background-image: url('<?php echo e(asset('images/main-home/'.$block->image)); ?>')">
          <div class="overlay-bg <?php echo e($block->left == 1 ? 'gredient-overlay-left' : 'gredient-overlay-right'); ?> "></div>
          <div class="container-fluid">
            <div class="row">
              <div class="col-md-6 <?php echo e($block->left == 1 ? 'col-md-offset-6 col-md-6 text-right' : ''); ?>">
                <h2 class="section-heading"><?php echo e($block->heading); ?></h2>
                <p class="section-dtl <?php echo e($block->left == 1 ? 'pad-lt-100' : ''); ?>"><?php echo e($block->detail); ?></p>
                <?php if($block->button == 1): ?>
                  <?php if($block->button_link == 'login'): ?>
                    <?php if(auth()->guard()->guest()): ?>
                      <a href="<?php echo e(url('login')); ?>" class="btn btn-prime"><?php echo e($block->button_text); ?></a>
                    <?php endif; ?>
                  <?php else: ?>
                    <?php if(auth()->guard()->guest()): ?>
                      <a href="<?php echo e(url('register')); ?>" class="btn btn-prime"><?php echo e($block->button_text); ?></a>
                    <?php endif; ?>
                  <?php endif; ?>
                <?php endif; ?>
              </div>
            </div>
          </div>
        </div>
        <!-- end out section -->
      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    <?php endif; ?>
    <!-- Pricing plan main block -->
    

    
    <?php if(isset($plans) && count($plans) > 0): ?>
      <div class="purchase-plan-main-block main-home-section-plans">
        <div class="panel-setting-main-block">
          <div class="container">
            <div class="plan-block-dtl">
              <h3 class="plan-dtl-heading">Membership Plans</h3>
              <ul>
                <li>Select any of your preferred membership package &amp; make payment.
                </li>
                <li>You can cancel your subscription anytime later. 
                  
                  <?php if(Auth::check()): ?>
                    <?php  
                       $id = Auth::user()->id;
                       $getuserplan = App\PaypalSubscription::where('user_id',$id)->first();
                    ?>
                  <?php endif; ?>

                  <?php
                    $today =  date('Y-m-d h:i:s');
                  ?>

    
                </li>
              </ul>
            </div>
            <div class="snip1404 row">
                
             

              <?php $__currentLoopData = $plans; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $plan): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
              <?php if($plan->delete_status ==1 ): ?>
                <?php if($plan->status == 1): ?>
                  <div class="col-md-4">
                    <div class="main-plan-section">
                      <header>
                        <h4 class="plan-title">
                          <?php echo e($plan->name); ?>

                        </h4>
                        <div class="plan-cost"><span class="plan-price"><i class="<?php echo e($currency_symbol); ?>"></i><?php echo e($plan->amount); ?></span><span class="plan-type">
                            <i class="<?php echo e($currency_symbol); ?>"></i> <?php echo e(number_format(($plan->amount) / ($plan->interval_count),2)); ?>

                            <?php if($plan->interval == 'year'): ?>
                              Yearly
                            <?php elseif($plan->interval == 'month'): ?>
                              Monthly
                            <?php elseif($plan->interval == 'week'): ?>
                              Weekly
                            <?php elseif($plan->interval == 'day'): ?>
                              Daily
                            <?php endif; ?>
                        </span></div>
                      </header>
                      <?php
                        $collectionHalves = array_chunk($pricingTexts->all(), ceil($pricingTexts->count() / 1));
                      ?>
                      <?php $__currentLoopData = $collectionHalves[0]; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $element): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                      <ul class="plan-features">
                        <?php if(isset($pricingTexts) && count($pricingTexts) > 0): ?>
                        <li><i class="fa fa-check"> </i><?php echo e($element->value); ?> <?php echo e($plan->interval_count); ?>

                            <?php if($plan->interval_count>1): ?>
                              <?php echo e($plan->interval); ?>s
                            <?php else: ?>
                              <?php echo e($plan->interval); ?>

                            <?php endif; ?>
                         </li>






                        <?php endif; ?>
                      </ul>
                      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                      
                      <?php if(auth()->guard()->check()): ?>
                      <?php if($auth->is_admin == 1): ?>
                <div class="plan-select"><a href="<?php echo e(route('get_payment', $plan->id)); ?>" class="btn btn-prime">Subscribe</a></div>
              <?php else: ?>
                <?php if(isset($getuserplan)): ?>
                  <?php if($getuserplan->package_id == $plan->id && $getuserplan->status == "1" && $today <= $getuserplan->subscription_to): ?>
                
                  <div class="plan-select"><a class="btn btn-prime">Already Subscribed</a></div>

                <?php else: ?>

                  <div class="plan-select"><a href="<?php echo e(route('get_payment', $plan->id)); ?>" class="btn btn-prime">Subscribe</a></div>

                <?php endif; ?>
                <?php else: ?>
                  <div class="plan-select"><a href="<?php echo e(route('get_payment', $plan->id)); ?>" class="btn btn-prime">Subscribe</a></div>
                <?php endif; ?>
              
                
              <?php endif; ?>
              
                    
                        <?php else: ?>
                        <div class="plan-select"><a href="<?php echo e(route('register')); ?>">Register Now</a></div>
                      <?php endif; ?>
                    </div>
                  </div>
                <?php endif; ?>
              <?php endif; ?>
              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
          </div>
        </div>
      </div>
    <?php endif; ?>
    
    <!-- end featured main block -->
    <!-- end out section -->
  </section>
<!-- end main wrapper -->
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.theme', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>