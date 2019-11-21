
<!DOCTYPE html>
<!--
**********************************************************************************************************
    Copyright (c) 2019 .
**********************************************************************************************************  -->
<!--
Template Name: Next Hour - Movie Tv Show & Video Subscription Portal Cms
Version: 2.2.0
Author: Media City
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]> -->
<html lang="en">
<!-- <![endif]-->
<!-- head -->
<head>
  <title><?php echo $__env->yieldContent('title'); ?> - <?php echo e($w_title); ?></title>
  <meta charset="utf-8" />
  <meta content="width=device-width, initial-scale=1.0" name="viewport" />
  <meta name="Description" content="<?php echo e($description); ?>" />
  <meta name="keyword" content="<?php echo e($w_title); ?>, <?php echo e($keyword); ?>">
  <meta name="MobileOptimized" content="320" />    
  <?php echo $__env->yieldContent('custom-meta'); ?>
  <meta name="csrf-token" content="<?php echo e(csrf_token()); ?>"><!-- CSRF Token -->

  <link rel="icon" type="image/icon" href="<?php echo e(asset('images/favicon/favicon.png')); ?>"> <!-- favicon icon -->
  <!-- theme style -->
  <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet"> <!-- google font -->
  <link href="<?php echo e(asset('css/videojs-icons.css')); ?>" rel="stylesheet" type="text/css"/> <!-- google font -->
  <link href="<?php echo e(asset('css/bootstrap.min.css')); ?>" rel="stylesheet" type="text/css"/> <!-- bootstrap css -->
  <link href="https://vjs.zencdn.net/6.6.0/video-js.css" rel="stylesheet"> <!-- videojs css -->
  <link href="<?php echo e(asset('css/menumaker.css')); ?>" type="text/css" rel="stylesheet"> <!-- menu css -->
  <link href="<?php echo e(asset('css/owl.carousel.min.css')); ?>" rel="stylesheet" type="text/css"/> <!-- owl carousel css -->
  <link href="<?php echo e(asset('css/owl.theme.default.min.css')); ?>" rel="stylesheet" type="text/css"/> <!-- owl carousel css -->
  <link href="<?php echo e(asset('css/font-awesome.min.css')); ?>" rel="stylesheet" type="text/css"/> <!-- fontawsome css -->
  <link href="<?php echo e(asset('css/popover.css')); ?>" rel="stylesheet" type="text/css"/> <!-- bootstrap popover css -->
  <link href="<?php echo e(asset('css/layers.css')); ?>" rel="stylesheet" type="text/css"/> <!-- revolution css -->
  <link href="<?php echo e(asset('css/navigation.css')); ?>" rel="stylesheet" type="text/css"/> <!-- revolution css -->
  <link href="<?php echo e(asset('css/pe-icon-7-stroke.css')); ?>" rel="stylesheet" type="text/css"/> <!-- revolution css -->
  <link href="<?php echo e(asset('css/settings.css')); ?>" rel="stylesheet" type="text/css"/> <!-- revolution css -->
  <link href="<?php echo e(asset('css/videojs-playlist-ui.vertical.css')); ?>" rel="stylesheet" type="text/css"/>
  <link rel="stylesheet" href="<?php echo e(url('css/colorbox.css')); ?>">
  <!-- videojs playlist ui css -->
  <?php if($color==1): ?>
  <link href="<?php echo e(asset('css/style-light.css')); ?>" rel="stylesheet" type="text/css"/> <!-- custom light css -->
  <?php else: ?>
  <link href="<?php echo e(asset('css/style.css')); ?>" rel="stylesheet" type="text/css"/> <!-- custom css -->
    <?php endif; ?>
    <link href="<?php echo e(asset('css/custom-style.css')); ?>" rel="stylesheet" type="text/css"/>

  <link href="<?php echo e(asset('css/goto.css')); ?>" rel="stylesheet" type="text/css"/>
  <link rel="stylesheet" href="<?php echo e(asset('content/global.css')); ?>"><!-- go to top css -->
  <script src="https://js.stripe.com/v3/"></script> <!-- stripe script -->
  <script type="text/javascript" src="<?php echo e(asset('js/jquery.min.js')); ?>"></script>
  <script type="text/javascript" src="<?php echo e(asset('java/FWDUVPlayer.js')); ?>"></script> 
  <!-- jquery
   library js -->

  <script>
    window.Laravel =  <?php echo json_encode([
        'csrfToken' => csrf_token(),
    ]); ?>
  </script>
  <script type="text/javascript" src="<?php echo e(asset('js/app.js')); ?>"></script> <!-- app library js -->
   <!-- notification icon style -->
  <style type="text/css">
   #ex4 .p1[data-count]:after{
    position:absolute;
    right:10%;
    top:8%;
    content: attr(data-count);
    font-size:40%;
    padding:.2em;
    border-radius:50%;
    line-height:1em;
    color: white;
    background:#c0392b;
    text-align:center;
    min-width: 1em;
    //font-weight:bold;
  }
</style>
  <!-- end theme style -->
 
  <?php echo $__env->yieldContent('player-sc'); ?>

</head>
<!-- end head -->
<!--body start-->
<body>
<!-- preloader -->
<?php if($preloader == 1): ?>
  <div class="loading">
    <div class="logo">
      <img src="<?php echo e(asset('images/logo/'.$logo)); ?>" class="img-responsive" alt="<?php echo e($w_title); ?>">
    </div>
    <div class="loading-text">
      <span class="loading-text-words">L</span>
      <span class="loading-text-words">O</span>
      <span class="loading-text-words">A</span>
      <span class="loading-text-words">D</span>
      <span class="loading-text-words">I</span>
      <span class="loading-text-words">N</span>
      <span class="loading-text-words">G</span>
    </div>
  </div>
<?php endif; ?>
<!-- end preloader -->
<div class="body-overlay-bg"></div>
<?php if(Session::has('added')): ?>
  <div id="sessionModal" class="sessionmodal rgba-green-strong z-depth-2">
    <i class="fa fa-check-circle"></i> <p><?php echo e(session('added')); ?></p>
  </div>
<?php elseif(Session::has('updated')): ?>
  <div id="sessionModal" class="sessionmodal rgba-cyan-strong z-depth-2">
    <i class="fa fa-exclamation-triangle"></i> <p><?php echo e(session('updated')); ?></p>
  </div>
<?php elseif(Session::has('deleted')): ?>
  <div id="sessionModal" class="sessionmodal rgba-red-strong z-depth-2">
    <i class="fa fa-window-close"></i> <p><?php echo e(session('deleted')); ?></p>
  </div>
<?php endif; ?>
<!-- preloader -->
<div class="preloader">
  <div class="status">
    <div class="status-message">
    </div>
  </div>
</div>
  <?php
            $subscribed = null;
                   
            if (isset($auth)) {
          
          
            
              $current_date = date("d/m/y");
                  
              $auth = Illuminate\Support\Facades\Auth::user();
              if ($auth->is_admin == 1) {
                $subscribed = 1;
                   $nav_menus=App\Menu::all();
              } else if ($auth->stripe_id != null) {
                Stripe\Stripe::setApiKey(env('STRIPE_SECRET'));
                if(isset($invoices) && $invoices != null && count($invoices->data) > 0)
                
                {
                $user_plan_end_date = date("d/m/y", $invoice->lines->data[0]->period->end);
                $plans = App\Package::all();
                foreach ($plans as $key => $plan) {
                  if ($auth->subscriptions($plan->plan_id)) {
                   
                  if($current_date <= $user_plan_end_date)
                  {
                       if($auth->is_admin==0){

          $packageid=App\PaypalSubscription::select('package_id')->where('user_id',$auth->id)->get();
            foreach($packageid as $package){
              $packagename=App\Package::select('plan_id')->where('id',$package->package_id)->get();
          }
           if(isset($packagename)){ foreach($packagename as $pn){
          $planmenus= DB::table('package_menu')->where('package_id', $pn->plan_id)->get();
          
          }}
           if(isset($planmenus)){ 
          foreach ($planmenus as $key => $value) {
                     $menus[]=$value->menu_id;
                }
              }
               if(isset($menus)){ 
         $nav_menus=App\Menu::whereIn('id',$menus)->get();
         }
        }
                      $subscribed = 1;
                  }
                      
                  }
                } 
                }
              } else if (isset($auth->paypal_subscriptions)) {  
                //Check Paypal Subscription of user
                $last_payment = $auth->paypal_subscriptions->last();
                if (isset($last_payment) && $last_payment->status == 1) {
                  //check last date to current date
                  $current_date = Illuminate\Support\Carbon::now();
                  if (date($current_date) <= date($last_payment->subscription_to)) {
                    $subscribed = 1;
                     if($auth->is_admin==0){

          $packageid=App\PaypalSubscription::select('package_id')->where('user_id',$auth->id)->get();
            foreach($packageid as $package){
              $packagename=App\Package::select('plan_id')->where('id',$package->package_id)->get();
          }
           if(isset($packagename)){ foreach($packagename as $pn){
          $planmenus= DB::table('package_menu')->where('package_id', $pn->plan_id)->get();
          
          }}
           if(isset($planmenus)){ 
          foreach ($planmenus as $key => $value) {
                     $menus[]=$value->menu_id;
                }
              }
               if(isset($menus)){ 
         $nav_menus=App\Menu::whereIn('id',$menus)->get();
         }
        }
                  }
                }
              }
            }
          ?>
<!-- end preloader -->
<!-- navigation -->
<div class="navigation" style="background: black;">
  <div class="container-fluid nav-container">
    <div class="row">
      <div class="col-sm-2">
        <div class="nav-logo">
         
           <?php if(isset($nav_menus) && count($nav_menus) > 0): ?>
            <?php $__currentLoopData = $nav_menus; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $menu): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
             <?php if(isset($logo) != null): ?>
           
            <a href="<?php echo e(isset($menu) ? route('home', strtolower($menu->slug)) : '#'); ?>" title="<?php echo e($w_title); ?>"><img src="<?php echo e(asset('images/logo/'.$logo)); ?>" class="img-responsive" alt="<?php echo e($w_title); ?>"></a>
            <?php break; ?>
          <?php else: ?>
            <a href="<?php echo e(route('home', $menu->slug)); ?>" title="<?php echo e($w_title); ?>"><img src="images/logo.png" class="img-responsive" alt="<?php echo e($w_title); ?>"></a>
            <?php break; ?>
              <?php endif; ?>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
          
          <?php endif; ?>

        </div>
      </div>
      <div class="col-sm-4">
        <?php if(auth()->guard()->check()): ?>

          <?php if($subscribed == 1): ?>
            <div id="cssmenu">
              <?php if(isset($nav_menus) && count($nav_menus) > 0): ?>
                <ul>
                  <?php $__currentLoopData = $nav_menus; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $menu): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <li><a class="<?php echo e(Nav::hasSegment($menu->slug)); ?>" href="<?php echo e(url('/', $menu->slug)); ?>"  title="<?php echo e($menu->name); ?>"><?php echo e($menu->name); ?></a></li>
                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </ul>
              <?php endif; ?>
            </div>
           
          <?php endif; ?>
        <?php endif; ?>
      </div>
      <div class="col-sm-6 pull-right">
        <div class="login-panel-main-block">
          <ul>
            <?php if(auth()->guard()->check()): ?>
              <?php if($subscribed == 1): ?>
              
                  <!-- notificaion -->
            <li> <div id="ex4" class="dropdown prime-dropdown">
              
              <span class="p1 fa-stack fa-2x has-badge dropdown-toggle" type="button" data-toggle="dropdown" data-count="<?php echo e(auth()->user()->unreadnotifications->count()); ?>">
               
                <i class="p3 fa fa-bell fa-stack-1x xfa-inverse" data-count="4b"></i>
           
              </span>

              <ul class="dropdown-menu prime-dropdown-menu-right">


                <?php $__currentLoopData = auth()->user()->unreadnotifications; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $n): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?> 
                <li>
                  <?php
                  $tv=null;$movie=null;$tvname=null;$moviename=null;
                  if(isset($n->tv_id) && !is_null($n->tv_id)){
                  $tv=App\TvSeries::where('id',$n->tv_id)->get();
                  if(isset($tv)){
                  foreach($tv as $t){
                  $tvname=$t->title;
                }
              }
            }
            if(isset($n->movie_id) && !is_null($n->movie_id)){
            $movie=App\Movie::where('id',$n->movie_id)->get();
            if(isset($movie)){
            foreach($movie as $m){
            $moviename=$m->title;
          }

        }
      }
      ?>
      <div id="notification_id" onclick="readed('<?php echo e($n->id); ?>')" class="card" style="padding: 6px;" >
        <p style="color: #2980b9; font-size: 17px; padding: 3px;"><b> <?php echo e($n->title); ?></b></p>
        <p style="margin-top: -6px; font-size: 16px;"> <?php echo e($n->data['data']); ?> &nbsp 
          <?php if(isset($tvname)): ?>
      <a type="button" href="<?php echo e(url('show/detail',$n->tv_id)); ?>" style="font-size: 16px; color:  #a9ea81">
        <b> "<?php echo e($tvname); ?>"</b></a>
        <?php endif; ?> 
        &nbsp
          <?php if(isset($moviename)): ?>
    <a type="button" href="<?php echo e(url('movie/detail', $n->movie_id)); ?>" style="font-size: 16px;color: #a9ea81">
      <b> "<?php echo e($moviename); ?>"</b>
       </a> <?php endif; ?> 
     </p>

        </div>
        <hr style="margin-top: 1px;">
      </li>
      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </ul>
  </div> 
</li>
              <?php endif; ?>
        
              <li class="sign-in-block">
                <div class="dropdown prime-dropdown">
                  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown"><i class="fa fa-user-circle"></i> <?php if(Session::has('nickname')): ?> <?php echo e(Session::get('nickname')); ?> <?php else: ?> <?php echo e($auth ? $auth->name : ''); ?> <?php endif; ?>
                    <span class="caret"></span></button>
                  <ul class="dropdown-menu prime-dropdown-menu">
                    <?php if($auth->is_admin == 1): ?>
                      <li><a href="<?php echo e(url('admin')); ?>" target="_blank">Admin <?php echo e($header_translations->where('key', 'dashboard') ? $header_translations->where('key', 'dashboard')->first->value->value : ''); ?></a></li>
                    <?php endif; ?>
                    <?php if(isset($nav_menus)): ?>
                    <?php if($subscribed == 1): ?>
                     <li><a href="<?php echo e(url('account/virtualcard')); ?>" class="active"><?php echo e($header_translations->where('key', 'virtualcard')->first->value->value); ?></a></li>
                      <li><a href="<?php echo e(route('userwishlistshow', $menu->slug)); ?>" class="active"><?php echo e($header_translations->where('key', 'watchlist')->first->value->value); ?></a></li>
                      <li><a href="<?php echo e(url('account/myprogress')); ?>" class="active"><?php echo e($header_translations->where('key', 'report')->first->value->value); ?></a></li>
                       <li><a href="<?php echo e(url('account/askquestion')); ?>" class="active"><?php echo e($header_translations->where('key', 'question')->first->value->value); ?></a></li>
                    <?php else: ?>
                      <li><a href="<?php echo e(url('account/purchaseplan')); ?>">Subscribe</a></li>
                    <?php endif; ?>
                    <?php endif; ?>
                    <li><a href="<?php echo e(url('account')); ?>"><?php echo e($header_translations->where('key', 'dashboard') ? $header_translations->where('key', 'dashboard')->first->value->value : ''); ?></a></li>
                    
                    
                    <li>
                      <a href="<?php echo e(route('logout')); ?>"
                         onclick="event.preventDefault();
                                                       document.getElementById('logout-form').submit();">
                         <?php echo e($header_translations->where('key', 'sign out') ? $header_translations->where('key', 'sign out')->first->value->value : ''); ?>

                      </a>
                      <form id="logout-form" action="<?php echo e(route('logout')); ?>" method="POST" style="display: none;">
                        <?php echo e(csrf_field()); ?>

                      </form>
                    </li>
                  </ul>
                </div>
              </li>
            <?php else: ?>
              <li class="sign-in-block mrgn-rt-20"><a class="sign-in" href="<?php echo e(url('login')); ?>"><i class="fa fa-sign-in"></i> <?php echo e($header_translations->where('key', 'sign in') ? $header_translations->where('key', 'sign in')->first->value->value : ''); ?></a></li>
              <li class="sign-in-block"><a class="sign-in" href="<?php echo e(url('register')); ?>"><i class="fa fa-user-plus"></i> <?php echo e($header_translations->where('key', 'register') ? $header_translations->where('key', 'register')->first->value->value : ''); ?></a></li>
            <?php endif; ?>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
<div>

<!-- end navigation -->
<?php echo $__env->yieldContent('main-wrapper'); ?>
<!-- footer -->
<?php if($prime_footer == 1): ?>
  <footer id="prime-footer" class="prime-footer-main-block">
    <div class="container-fluid">
      <div style="height:0px;">
      <a id="back2Top" title="Back to top" href="#">&#10148;</a>
      </div>
      <div class="logo">
        <img src="<?php echo e(asset('images/logo/'.$logo)); ?>" class="img-responsive" alt="<?php echo e($w_title); ?>">
      </div>

       <div class="text-center">
            <?php
              $si = App\SocialIcon::first();
            ?>
            <div class="footer-widgets social-widgets social-btns">
              <ul>
                <li><a href="<?php echo e($si->url1); ?>" target="_blank"><i class="fa fa-facebook"></i></a></li>
                <li><a href="<?php echo e($si->url2); ?>" target="_blank"><i class="fa fa-twitter"></i></a></li>
                <li><a href="<?php echo e($si->url3); ?>" target="_blank"><i class="fa fa-youtube"></i></a></li>
              </ul>
            </div>
       </div>

      <div class="copyright">
        <ul>
          <li>
            <?php if(isset($copyright)): ?>
              <?php echo $copyright; ?>

            <?php endif; ?>
          </li>
        </ul>
        <ul>
          <li><a href="<?php echo e(url('terms_condition')); ?>"><?php echo e($footer_translations->where('key', 'terms and condition') ? $footer_translations->where('key', 'terms and condition')->first->value->value : ''); ?></a></li>
          <li><a href="<?php echo e(url('privacy_policy')); ?>"><?php echo e($footer_translations->where('key', 'privacy policy') ? $footer_translations->where('key', 'privacy policy')->first->value->value : ''); ?></a></li>
          <li><a href="<?php echo e(url('refund_policy')); ?>"><?php echo e($footer_translations->where('key', 'refund policy') ? $footer_translations->where('key', 'refund policy')->first->value->value : ''); ?></a></li>
          <li><a href="<?php echo e(url('faq')); ?>"><?php echo e($footer_translations->where('key', 'help') ? $footer_translations->where('key', 'help')->first->value->value : ''); ?></a></li>
          <li><a href="<?php echo e(url('contactus')); ?>">Contact us</a></li>
          


        </ul>




          </div>
      </div>
    </div>
  </footer>
<?php else: ?>
  <footer id="footer-main-block" class="footer-main-block">
    <div class="pre-footer">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-3">
            <div class="footer-logo footer-widgets">
              <?php if(isset($logo)): ?>
                <img src="<?php echo e(asset('images/logo/'.$logo)); ?>" class="img-responsive" alt="<?php echo e($w_title); ?>">
              <?php endif; ?>
            </div>
          </div>
          <div class="col-md-4">
            <div class="footer-widgets">
              <div class="row">
                <div class="col-md-6">
                  <div class="footer-links-block">
                    <h4 class="footer-widgets-heading"><?php echo e($footer_translations->where('key', 'corporate') ? $footer_translations->where('key', 'corporate')->first->value->value : ''); ?></h4>
                    <ul>
                      <li><a href="<?php echo e(url('terms_condition')); ?>"><?php echo e($footer_translations->where('key', 'terms and condition') ? $footer_translations->where('key', 'terms and condition')->first->value->value : ''); ?></a></li>
                      <li><a href="<?php echo e(url('privacy_policy')); ?>"><?php echo e($footer_translations->where('key', 'privacy policy') ? $footer_translations->where('key', 'privacy policy')->first->value->value : ''); ?></a></li>
                      <li><a href="<?php echo e(url('refund_policy')); ?>"><?php echo e($footer_translations->where('key', 'refund policy') ? $footer_translations->where('key', 'refund policy')->first->value->value : ''); ?></a></li>
                      <li><a href="<?php echo e(url('faq')); ?>"><?php echo e($footer_translations->where('key', 'help') ? $footer_translations->where('key', 'help')->first->value->value : ''); ?></a></li>

                    </ul>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="footer-links-block">
                    <h4 class="footer-widgets-heading"><?php echo e($footer_translations->where('key', 'sitemap') ? $footer_translations->where('key', 'sitemap')->first->value->value : ''); ?></h4>
                    <ul>
                      <li><a href="<?php echo e(url('home')); ?>">Home</a></li>
                      <li><a href="<?php echo e(url('movies')); ?>">Movies</a></li>
                      <li><a href="<?php echo e(url('tvseries')); ?>">Tv Shows</a></li>
                      <li><a href="#">Corporate</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <div class="footer-widgets subscribe-widgets">
              <h4 class="footer-widgets-heading"><?php echo e($footer_translations->where('key', 'subscribe') ? $footer_translations->where('key', 'subscribe')->first->value->value : ''); ?></h4>
              <p class="subscribe-text"><?php echo e($footer_translations->where('key', 'subscribe text') ? $footer_translations->where('key', 'subscribe text')->first->value->value : ''); ?></p>
              <?php echo Form::open(['method' => 'POST', 'action' => 'emailSubscribe@subscribe']); ?>

                <?php echo e(csrf_field()); ?>

                <div class="form-group">
                  <input type="email" name="email" class="form-control subscribe-input" placeholder="Enter your e-mail">
                  <button type="submit" class="subscribe-btn"><i class="fa fa-long-arrow-alt-right"></i></button>
                </div>
              <?php echo Form::close(); ?>

            </div>
          </div>
          <div class="col-md-2">
            <?php
              $si = App\SocialIcon::first();
            ?>
            <div class="footer-widgets social-widgets social-btns">
              <ul>
                <li><a href="<?php echo e($si->url1); ?>" target="_blank"><i class="fa fa-facebook"></i></a></li>
                <li><a href="<?php echo e($si->url2); ?>" target="_blank"><i class="fa fa-twitter"></i></a></li>
                <li><a href="<?php echo e($si->url3); ?>" target="_blank"><i class="fa fa-youtube"></i></a></li>

              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="container-fluid">
      <div class="copyright-footer">
        <?php if(isset($copyright)): ?>
          <?php echo $copyright; ?>

        <?php endif; ?>
      </div>
    </div>
  </footer>
<?php endif; ?>
<!-- end footer -->
<!-- jquery -->
<script type="text/javascript" src="<?php echo e(asset('js/bootstrap.min.js')); ?>"></script> <!-- bootstrap js -->
<script type="text/javascript" src="<?php echo e(asset('js/playlist.js')); ?>"></script> <!-- playlist js -->
<script type="text/javascript" src="<?php echo e(asset('js/youtube-videojs.min.js')); ?>"></script> <!-- youtube video js -->
<script type="text/javascript" src="<?php echo e(asset('js/videojs-hls.js')); ?>"></script> <!-- videojs hls js -->
<script type="text/javascript" src="<?php echo e(asset('js/vimeo.min.js')); ?>"></script> <!-- vimeo video js -->
<script type="text/javascript" src="<?php echo e(asset('js/jquery.popover.js')); ?>"></script> <!-- bootstrap popover js -->
<script type="text/javascript" src="<?php echo e(asset('js/menumaker.js')); ?>"></script> <!-- menumaker js -->
<script type="text/javascript" src="<?php echo e(asset('js/jquery.curtail.min.js')); ?>"></script> <!-- menumaker js -->
<script type="text/javascript" src="<?php echo e(asset('js/owl.carousel.min.js')); ?>"></script> <!-- owl carousel js -->
<script type="text/javascript" src="<?php echo e(asset('js/jquery.scrollSpeed.js')); ?>"></script> <!-- owl carousel js -->
<script type="text/javascript" src="<?php echo e(asset('js/TweenMax.min.js')); ?>"></script> <!-- animation gsap js -->
<script type="text/javascript" src="<?php echo e(asset('js/ScrollMagic.min.js')); ?>"></script> <!-- custom js -->
<script type="text/javascript" src="<?php echo e(asset('js/videojs-playlist-ui.min.js')); ?>"></script> <!-- videojs playlist js -->
<script type="text/javascript" src="<?php echo e(asset('js/animation.gsap.min.js')); ?>"></script> <!-- animation gsap js -->
<script type="text/javascript" src="<?php echo e(asset('js/debug.addIndicators.min.js')); ?>"></script> <!-- debug addIndicators js -->
<script type="text/javascript" src="<?php echo e(asset('js/modernizr-custom.js')); ?>"></script> <!-- debug addIndicators js -->
<script type="text/javascript" src="<?php echo e(asset('js/theme.js')); ?>"></script> <!-- custom js -->
<script type="text/javascript" src="<?php echo e(asset('js/custom-js.js')); ?>"></script>
<script type="text/javascript" src="<?php echo e(url('js/colorbox.js')); ?>"></script>
<script src="https://html2canvas.hertzen.com/dist/html2canvas.js"></script>
<!-- end jquery -->
<?php echo $__env->yieldContent('custom-script'); ?>
<script>
(function($) {
// Session Popup
  $('.sessionmodal').addClass("active");
  setTimeout(function() {
      $('.sessionmodal').removeClass("active");
  }, 7000);

  if (window.location.hash == '#_=_'){
  history.replaceState
      ? history.replaceState(null, null, window.location.href.split('#')[0])
      : window.location.hash = '';
  }
})(jQuery);
</script>

<?php if($google): ?>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', '<?php echo e($google); ?>', 'auto');
  ga('send', 'pageview');

</script>

<?php endif; ?>
<?php if($fb): ?>
<!-- facebook pixel -->
<script>
!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
document,'script','https://connect.facebook.net/en_US/fbevents.js');
fbq('init', '<?php echo e($fb); ?>');
fbq('track', 'PageView');
</script>
<!--End facebook pixel -->
<?php endif; ?>

<?php if($rightclick == 1): ?>
<script type="text/javascript" language="javascript">
// Right click disable
  $(function() {
    $(this).bind("contextmenu", function(inspect) {
    inspect.preventDefault();
    });
  });
// End Right click disable
  </script>
<?php endif; ?>

<?php if($inspect == 1): ?>
<script type="text/javascript" language="javascript">
//all controller is disable
  $(function() {
    var isCtrl = false;
    document.onkeyup=function(e){
      if(e.which == 17) isCtrl=false;
    }

    document.onkeydown=function(e){
      if(e.which == 17) isCtrl=true;
        if(e.which == 85 && isCtrl == true) {
          return false;
        }
      };
      $(document).keydown(function (event) {
        if (event.keyCode == 123) { // Prevent F12
          return false;
        }
      else if (event.ctrlKey && event.shiftKey && event.keyCode == 73) { // Prevent Ctrl+Shift+I
        return false;
      }
    });
  });
// end all controller is disable
</script>
<?php endif; ?>


<?php if($goto==1): ?>
<script type="text/javascript">
 // go to top
$(window).scroll(function() {
  var height = $(window).scrollTop();
  if (height > 100) {
    $('#back2Top').fadeIn();
  } else {
    $('#back2Top').fadeOut();
  }
});
$(document).ready(function() {
  $("#back2Top").click(function(event) {
    event.preventDefault();
    $("html, body").animate({ scrollTop: 0 }, "slow");
    return false;
  });

});
// end go to top
</script>
<?php endif; ?>
<script type="text/javascript">
   function readed(id){

     $.ajax({
        type : 'GET',
        data : { id:id },
        url  : '<?php echo e(url('/user/notification/read')); ?>/'+id,
        success :function(data){
          console.log(data);
        }
     });
  }
 
</script>

<?php echo $__env->yieldContent('script'); ?>
</body>
<!--body end -->
</html>
