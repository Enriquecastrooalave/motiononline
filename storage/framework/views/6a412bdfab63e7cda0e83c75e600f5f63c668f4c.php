<?php $__env->startSection('title',"$menu->name"); ?>
 <?php $__env->startSection('custom-meta'); ?>
<style type="text/css">
.modal-open .modal {
    z-index: 99999999999999999999;
}</style>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('main-wrapper'); ?>
<!-- main wrapper  slider -->
<section id="wishlistelement" class="main-wrapper">

 <div class="modal fade"  style="margin-top: 60px;" id="myModal" role="dialog">
   <div class="modal-dialog">

    <div class="modal-content">
      <!--   <div class="modal-header">
          <h4 class="modal-title" id="title"></h4>
        </div> -->
        <div class="modal-body">
          <!-- <input type="text" id="applicantid" name="applicantid" value="" /> -->

          <img width="100%" src="" class="img" id="imgid" alt=""/>  

          <!-- <p>Some text in the modal.</p> -->
        </div>
        <div class="modal-footer">
          <button type="button " class="btn btn-outline-info btn_sm" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  <div>
    <div id="home-main-block" class="home-main-block">
      <div id="home-slider-one" class="home-slider-one owl-carousel">

        <?php if(isset($home_slides)): ?>
        <?php $__currentLoopData = $home_slides; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $slide): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <?php if($slide->active == 1): ?>
        <div class="slider-block">
          <div class="slider-image">
            <?php if($slide->movie_id != null): ?>
           
            <a href="#">
              <?php if($slide->slide_image != null): ?>
              <img src="<?php echo e(asset('images/home_slider/movies/'. $slide->slide_image)); ?>" class="img-responsive" alt="slider-image">
              <?php elseif($slide->movie->poster != null): ?>
              <img src="<?php echo e(asset('images/movies/posters/'. $slide->movie->poster)); ?>" class="img-responsive" alt="slider-image">
              <?php endif; ?>
            </a>
           
          
           <?php elseif($slide->tv_series_id != null && isset($slide->tvseries->seasons[0])): ?>
           <a href="#">
            <?php if($slide->slide_image != null): ?>
            <img src="<?php echo e(asset('images/home_slider/shows/'. $slide->slide_image)); ?>" class="img-responsive" alt="slider-image">
            <?php elseif($slide->tvseries->poster != null): ?>
            <img src="<?php echo e(asset('images/tvseries/posters/'. $slide->tvseries->poster)); ?>" class="img-responsive" alt="slider-image">
            <?php endif; ?>
          </a>
          <?php endif; ?>
        </div>
      </div>
      <?php endif; ?>
      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
      <?php endif; ?>
    </div>
  </div>

  <?php if($prime_genre_slider == 1): ?>
  <?php if(count($all_mix) > 0): ?>
  <?php if(isset($sliderview)): ?>
  <?php $__currentLoopData = $sliderview; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $s): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
  <?php if($s->id==1  && $s->sliderview==1): ?>
  <div class="genre-prime-block">

    <?php
    $block_no = 0;
    $t = DB::table('home_translations')->where('key','=','watch next tv series and movies')->first();
    ?>

    <?php if($t->status==1): ?>
    <div class="container-fluid">
      <h5 class="section-heading"><?php echo e($home_translations->where('key', 'watch next tv series and movies')->first->value->value); ?> </h5>
      <a href="<?php echo e(route('showall',['menuid' => $menu->id, 'menuname' => $menu->name])); ?>" class="see-more"> <b><?php echo e($home_translations->where('key', 'view all')->first->value->value); ?></b></a>
      <div class="genre-prime-slider owl-carousel">
        <?php $__currentLoopData = $all_mix; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <?php
        if ($item->type == 'M') {
          $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
            ['user_id', '=', $auth->id],
            ['movie_id', '=', $item->id],
          ])->first();
        }
        ?>

        <?php if($item->type == 'T'): ?>

        <?php

        $gets1 = App\Season::where('tv_series_id','=',$item->id)->first();

        if (isset($gets1)) {


          $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
            ['user_id', '=', $auth->id],
            ['season_id', '=', $gets1->id],
          ])->first();


        }
        ?>


        <div class="genre-prime-slide">
          <div class="genre-slide-image protip" data-pt-placement="outside" data-pt-title="#prime-mix-description-block<?php echo e($item->id); ?><?php echo e($item->type); ?>">
            <a <?php if(isset($gets1)): ?> href="<?php echo e(url('show/detail',$gets1->id)); ?>" <?php endif; ?>>
              <?php if($item->thumbnail != null): ?>
              <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$item->thumbnail)); ?>" class="img-responsive" alt="genre-image">
              <?php elseif($item->tvseries->thumbnail != null): ?>
              <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$item->thumbnail)); ?>" class="img-responsive" alt="genre-image">
              <?php else: ?>
              <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
              <?php endif; ?>
            </a>
          </div>
        
        </div>
        <?php elseif($item->type == 'M'): ?>
        <div class="genre-prime-slide">
          <div class="genre-slide-image protip" data-pt-placement="outside" data-pt-title="#prime-mix-description-block<?php echo e($item->id); ?>">
           <?php if(!is_null($item->video_link->iframeurl) || !is_null($item->video_link->ready_url)): ?>
           <a href="<?php echo e(url('movie/detail',$item->id)); ?>">
            <?php if($item->thumbnail != null): ?>
            <img src="<?php echo e(asset('images/movies/thumbnails/'.$item->thumbnail)); ?>" class="img-responsive" alt="genre-image">
            <?php else: ?>
            <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
            <?php endif; ?>
          </a>
          <?php else: ?>
          <a data-toggle="modal" href="#myModal" data-title="<?php echo e($item->title); ?>" data-src="<?php echo e(asset('images/movies/thumbnails/'.$item->thumbnail)); ?>" data-id="<?php echo e($item->id); ?>" class="btn btn-white imag" title="Zoom">
            <?php if($item->thumbnail != null): ?>
            <img src="<?php echo e(asset('images/movies/thumbnails/'.$item->thumbnail)); ?>" class="img-responsive" alt="genre-image">
            <?php else: ?>
            <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
            <?php endif; ?>
          </a>
          <?php endif; ?>
        </div>

        
      </div>
      <?php endif; ?>
      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </div>
  </div>
  <?php endif; ?>

</div>
<?php break; ?>

<!-- starting grid view code -->
<?php elseif($s->id==1  && $s->sliderview==0): ?>
<div class="genre-prime-block">

 <?php
 $block_no = 0;
 $t = DB::table('home_translations')->where('key','=','watch next tv series and movies')->first();
 ?>

 <?php if($t->status==1): ?>
 <div class="container-fluid">
  <h5 class="section-heading"><?php echo e($home_translations->where('key', 'watch next tv series and movies')->first->value->value); ?> </h5>
  <a href="<?php echo e(route('showall',['menuid' => $menu->id, 'menuname' => $menu->name])); ?>" class="see-more"> <b><?php echo e($home_translations->where('key', 'view all')->first->value->value); ?></b></a>
  <div class="">
   <?php $__currentLoopData = $all_mix; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
   <?php
   if ($item->type == 'M') {
    $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
      ['user_id', '=', $auth->id],
      ['movie_id', '=', $item->id],
    ])->first();
  }
  ?>

  <?php if($item->type == 'T'): ?>

  <?php

  $gets1 = App\Season::where('tv_series_id','=',$item->id)->first();

  if (isset($gets1)) {


    $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
      ['user_id', '=', $auth->id],
      ['season_id', '=', $gets1->id],
    ])->first();


  }
  ?>
  <div class="col-lg-2 col-md-3 col-xs-6 col-sm-4">
    <div class="cus_img">
      <div class="genre-slide-image protip" data-pt-placement="outside" data-pt-interactive="false" data-pt-title="#prime-mix-description-block<?php echo e($item->id); ?><?php echo e($item->type); ?>">
        <a <?php if(isset($gets1)): ?> href="<?php echo e(url('show/detail',$gets1->id)); ?>" <?php endif; ?>>
          <?php if($item->thumbnail != null): ?>
          <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$item->thumbnail)); ?>" class="img-responsive" alt="genre-image">
          <?php elseif($item->tvseries->thumbnail != null): ?>
          <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$item->thumbnail)); ?>" class="img-responsive" alt="genre-image">
          <?php else: ?>
          <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
          <?php endif; ?>
        </a>


      </div>
     

    </div>
  </div>
  <?php elseif($item->type == 'M'): ?>
  <div class="col-lg-2 col-md-3 col-xs-6 col-sm-4">
    <div class="cus_img">
      <div class="genre-slide-image protip" data-pt-placement="outside" data-pt-interactive="false" data-pt-title="#prime-mix-description-block<?php echo e($item->id); ?>">
       <?php if(!is_null($item->video_link->iframeurl) || !is_null($item->video_link->ready_url)): ?>
       <a href="<?php echo e(url('movie/detail',$item->id)); ?>">
        <?php if($item->thumbnail != null): ?>
        <img src="<?php echo e(asset('images/movies/thumbnails/'.$item->thumbnail)); ?>" class="img-responsive" alt="genre-image">
        <?php else: ?>
        <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
        <?php endif; ?>
      </a>
      <?php else: ?>
      <a data-toggle="modal" href="#myModal" data-title="<?php echo e($item->title); ?>" data-src="<?php echo e(asset('images/movies/thumbnails/'.$item->thumbnail)); ?>" data-id="<?php echo e($item->id); ?>" class="btn btn-white imag" title="Zoom">
       <?php if($item->thumbnail != null): ?>
       <img src="<?php echo e(asset('images/movies/thumbnails/'.$item->thumbnail)); ?>" class="img-responsive" alt="genre-image">
       <?php else: ?>
       <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
       <?php endif; ?>
     </a>
     <?php endif; ?>
   </div>
   
</div>
</div>

<?php endif; ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</div>
</div>
</div>
<?php break; ?>
<?php endif; ?>
<?php endif; ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>

<?php endif; ?>
<!-- watch next movies -->
<?php if( isset($movies) && count($movies) > 0 ): ?>
<?php if(isset($sliderview)): ?>
<?php $__currentLoopData = $sliderview; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $s): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<?php if($s->id==2  && $s->sliderview==1): ?>

<div class="genre-prime-block">
  <?php
  $block_no = 1;
  $t1 = DB::table('home_translations')->where('key','=','watch next movies')->first();
  ?>
  <?php if($t1->status == 1): ?>
  <div class="container-fluid">
    <h5 class="section-heading"><?php echo e($home_translations->where('key', 'watch next movies') ? $home_translations->where('key', 'watch next movies')->first->value->value : ''); ?></h5>
    <a href="<?php echo e(route('showall2')); ?>" class="see-more"> <b><?php echo e($home_translations->where('key', 'view all')->first->value->value); ?></b></a>

    <div class="genre-prime-slider owl-carousel">
      <?php if(isset($movies)): ?>

      <?php 
      $getmoviecount = App\FrontSliderUpdate::where('id',2)->first()->item_show;
      $mco = $getmoviecount; 
      ?>


      <?php $__currentLoopData = $movies; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $a => $movie): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
      <?php if($a<$mco): ?>
      <?php
      $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
        ['user_id', '=', $auth->id],
        ['movie_id', '=', $movie->id],
      ])->first();
      ?>

      <div class="genre-prime-slide">

        <div class="genre-slide-image protip" data-pt-placement="outside" data-pt-interactive="false" data-pt-title="#prime-next-movie-description-block<?php echo e($movie->id); ?>">
         <?php if(!is_null($item->video_link->iframeurl) || !is_null($item->video_link->ready_url)): ?>
         <a href="<?php echo e(url('movie/detail',$movie->id)); ?>">
          <?php if($movie->thumbnail != null || $movie->thumbnail != ''): ?>
          <img src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" class="img-responsive" alt="genre-image">
          <?php else: ?>

          <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
          <?php endif; ?>
        </a>
        <?php else: ?>
        <a data-toggle="modal" href="#myModal" data-title="<?php echo e($item->title); ?>" data-src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" data-id="<?php echo e($item->id); ?>" class="btn btn-white imag" title="Zoom">
         <?php if($movie->thumbnail != null || $movie->thumbnail != ''): ?>
         <img src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" class="img-responsive" alt="genre-image">
         <?php else: ?>

         <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
         <?php endif; ?>
       </a>
       <?php endif; ?>
     </div>
    
</div>
<?php else: ?>
<?php break; ?>
<?php endif; ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>
</div>
</div>
<?php endif; ?>
</div>
<?php break; ?>
<?php elseif($s->id==2  && $s->sliderview==0): ?>
<div class="genre-prime-block">
 <?php
 $block_no = 1;
 $t1 = DB::table('home_translations')->where('key','=','watch next movies')->first();
 ?>
 <?php if($t1->status == 1): ?>
 <div class="container-fluid">
  <h5 class="section-heading"><?php echo e($home_translations->where('key', 'watch next movies') ? $home_translations->where('key', 'watch next movies')->first->value->value : ''); ?></h5>
  <a href="<?php echo e(route('showall2')); ?>" class="see-more"> <b><?php echo e($home_translations->where('key', 'view all')->first->value->value); ?></b></a>
  <div class="">
    <?php if(isset($movies)): ?>

    <?php 
    $getmoviecount = App\FrontSliderUpdate::where('id',2)->first()->item_show;
    $mco = $getmoviecount; 
    ?>


    <?php $__currentLoopData = $movies; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $a => $movie): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <?php if($a<$mco): ?>
    <?php
    $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
      ['user_id', '=', $auth->id],
      ['movie_id', '=', $movie->id],
    ])->first();
    ?>

    <div class="col-lg-2 col-md-3 col-xs-6 col-sm-4">
      <div class="cus_img">
       <div class="genre-slide-image protip" data-pt-placement="outside" data-pt-interactive="false" data-pt-title="#prime-next-movie-description-block<?php echo e($movie->id); ?>">
        <?php if(!is_null($movie->video_link->iframeurl) || !is_null($movie->video_link->ready_url)): ?>
        <a href="<?php echo e(url('movie/detail',$movie->id)); ?>">
          <?php if($movie->thumbnail != null || $movie->thumbnail != ''): ?>
          <img src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" class="img-responsive" alt="genre-image">
          <?php else: ?>

          <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
          <?php endif; ?>
        </a>
        <?php else: ?>
        <a data-toggle="modal" href="#myModal" data-title="<?php echo e($item->title); ?>" data-src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" data-id="<?php echo e($item->id); ?>" class="btn btn-white imag" title="Zoom">
         <?php if($movie->thumbnail != null || $movie->thumbnail != ''): ?>
         <img src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" class="img-responsive" alt="genre-image">
         <?php else: ?>

         <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
         <?php endif; ?>
       </a>
     </a>
     <?php endif; ?>
   </div>
   
</div></div>
<?php else: ?>
<?php break; ?>

<?php endif; ?>


<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>

</div>
</div>
<?php break; ?>
<?php endif; ?>
</div>
<?php endif; ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>
<?php endif; ?>
<br>
<!-- Tv Series  Next -->
<?php if( isset($tvserieses) && count($tvserieses) > 0 ): ?>
<?php if(isset($sliderview)): ?>
<?php $__currentLoopData = $sliderview; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $s): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<?php if($s->id==3  && $s->sliderview==1): ?>

<div class="genre-prime-block">

  <?php

  $t2 = DB::table('home_translations')->where('key','=','watch next tv series')->first();

  $getvs = App\FrontSliderUpdate::where('id',3)->first()->item_show;

  ?>

  <?php if($t2->status == 1): ?><div class="container-fluid">
    <h5 class="section-heading"><?php echo e($home_translations->where('key', 'watch next tv series')->first->value->value); ?></h5>
    <a href="<?php echo e(route('showall3')); ?>" class="see-more"> <b><?php echo e($home_translations->where('key', 'view all')->first->value->value); ?></b></a>
    <div class="genre-prime-slider owl-carousel">
      <?php if(isset($tvserieses)): ?>


      <?php $__currentLoopData = $tvserieses; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $y => $series): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

      <?php if($y<$getvs): ?>



      <?php
      $gets1 = App\Season::where('tv_series_id','=',$series->id)->first();

      if (isset($gets1)) {


        $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
          ['user_id', '=', $auth->id],
          ['season_id', '=', $gets1->id],
        ])->first();


      }
      ?>

      <div class="genre-prime-slide">
        <div class="genre-slide-image protip" data-pt-placement="outside" data-pt-title="#prime-next-show-description-block<?php echo e($series->id); ?><?php echo e($series->type); ?>">
          <a <?php if(isset($gets1)): ?> href="<?php echo e(url('show/detail',$gets1->id)); ?>" <?php endif; ?>>
            <?php if($series->thumbnail != null): ?>
            <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$series->thumbnail)); ?>" class="img-responsive" alt="genre-image">
            <?php elseif($series->tvseries->thumbnail != null): ?>
            <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$series->tvseries->thumbnail)); ?>" class="img-responsive" alt="genre-image">
            <?php else: ?>
            <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
            <?php endif; ?>
          </a>
        </div>
       
      </div>   

      <?php endif; ?>

      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
      <?php endif; ?>
    </div>
  </div><?php endif; ?>
</div>
<?php break; ?>
<?php elseif($s->id==3  && $s->sliderview==0): ?>
<div class="genre-prime-block">
  <?php

  $t2 = DB::table('home_translations')->where('key','=','watch next tv series')->first();

  $getvs = App\FrontSliderUpdate::where('id',3)->first()->item_show;

  ?>

  <?php if($t2->status == 1): ?><div class="container-fluid">
    <h5 class="section-heading"><?php echo e($home_translations->where('key', 'watch next tv series')->first->value->value); ?></h5>
    <a href="<?php echo e(route('showall3')); ?>" class="see-more"> <b><?php echo e($home_translations->where('key', 'view all')->first->value->value); ?></b></a>
    <div class="">
      <?php if(isset($tvserieses)): ?>


      <?php $__currentLoopData = $tvserieses; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $y => $series): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

      <?php if($y<$getvs): ?>



      <?php
      $gets1 = App\Season::where('tv_series_id','=',$series->id)->first();

      if (isset($gets1)) {


        $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
          ['user_id', '=', $auth->id],
          ['season_id', '=', $gets1->id],
        ])->first();


      }
      ?>
      <div class="col-lg-2 col-md-3 col-xs-6 col-sm-4">
        <div class="cus_img">
         <div class="genre-slide-image protip" data-pt-placement="outside" data-pt-title="#prime-next-show-description-block<?php echo e($series->id); ?><?php echo e($series->type); ?>">
          <a <?php if(isset($gets1)): ?> href="<?php echo e(url('show/detail',$gets1->id)); ?>" <?php endif; ?>>
            <?php if($series->thumbnail != null): ?>
            <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$series->thumbnail)); ?>" class="img-responsive" alt="genre-image">
            <?php elseif($series->tvseries->thumbnail != null): ?>
            <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$series->tvseries->thumbnail)); ?>" class="img-responsive" alt="genre-image">
            <?php else: ?>
            <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
            <?php endif; ?>
          </a>
        </div>
       
      </div></div>
      <?php endif; ?>
      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
      <?php endif; ?>
    </div>
  </div>
</div><?php endif; ?>
</div>
<?php break; ?>
<?php endif; ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>
<?php endif; ?>

<!-- genreblock  for movies-->
<?php if(isset($genres)): ?>
<?php $__currentLoopData = $genres; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $genre): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

<?php

$all_movies = collect();
$fil_movies = $menu->menu_data;
foreach ($fil_movies as $key => $value) {

  if ( isset($value->movie) ) {
    $all_movies->push($value->movie);
  }
}

$all_movies = $all_movies->flatten();
$all_movies =  $all_movies->filter(function($value, $key) {
  return  $value != null;
});

$movies = null;
$movies = collect();
foreach ($all_movies as $item) {
  if ($item->genre_id != null && $item->genre_id != '') {
    $movie_genre_list = explode(',', $item->genre_id);
    for($i = 0; $i < count($movie_genre_list); $i++) {
      $check = Illuminate\Support\Facades\DB::table('genres')->where('id', '=', trim($movie_genre_list[$i]))->get();
      if (isset($check[0]) && $check[0]->id == $genre->id) {
        $movies->push($item);
      }
    }
  }
}

?>

<?php if(count($movies) > 0): ?>
<?php if(isset($sliderview)): ?>
<?php $__currentLoopData = $sliderview; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $s): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<?php if($s->id==5  && $s->sliderview==1): ?>
<div class="genre-prime-block">

  <?php
  $genre_index = $key;
  $t3 = DB::table('home_translations')->where('key','=','movies')->first();

  $getvs = App\FrontSliderUpdate::where('id',4)->first()->item_show;

  $orderby = App\FrontSliderUpdate::where('id',4)->first()->orderby;

  if($orderby == 0){
    $movies = collect($movies)->sortByDesc('id');
  }

  ?>
  <?php if($t3->status == 1): ?>
  <div class="container-fluid">
    <h5 class="section-heading inline"><?php echo e($genre->name); ?></h5>

     <div class="genre-prime-slider owl-carousel">
      <?php $__currentLoopData = $movies; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $t => $movie): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
      <?php
      $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
        ['user_id', '=', $auth->id],
        ['movie_id', '=', $movie->id],
      ])->first();
      ?>
      <div class="genre-prime-slide">
        <div class="genre-slide-image protip" data-pt-placement="outside" data-pt-title="#prime-genre-movie-description-block<?php echo e($movie->id); ?>">
         <?php if(!is_null($movie->video_link->iframeurl) || !is_null($movie->video_link->ready_url)): ?>
         <a href="<?php echo e(url('movie/detail',$movie->id)); ?>">
          <?php if($movie->thumbnail != null || $movie->thumbnail != ''): ?>
          <img src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" class="img-responsive" alt="genre-image">
          <?php else: ?>
          <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
          <?php endif; ?>
        </a>
        <?php else: ?>
        <a data-toggle="modal" href="#myModal" data-title="<?php echo e($item->title); ?>" data-src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" data-id="<?php echo e($item->id); ?>" class="btn btn-white imag" title="Zoom">
         <?php if($movie->thumbnail != null || $movie->thumbnail != ''): ?>
         <img src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" class="img-responsive" alt="genre-image">
         <?php else: ?>
         <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
         <?php endif; ?>
       </a>
       <?php endif; ?>
     </div>
    
  </div>


  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</div>
</div><?php endif; ?>
</div>
<?php break; ?>
<?php elseif($s->id==5  && $s->sliderview==0): ?>
<div class="genre-prime-block">

  <?php
  $genre_index = $key;
  $t3 = DB::table('home_translations')->where('key','=','movies')->first();

  $getvs = App\FrontSliderUpdate::where('id',4)->first()->item_show;

  $orderby = App\FrontSliderUpdate::where('id',4)->first()->orderby;

  if($orderby == 0){
    $movies = collect($movies)->sortByDesc('id');
  }

  ?>
  <?php if($t3->status == 1): ?>
  <div class="container-fluid">
    <h5 class="section-heading inline"><?php echo e($genre->name); ?> <?php echo e($home_translations->where('key', 'movies')->first->value->value); ?></h5>

    <a href="<?php echo e(url('movies/genre', $genre->id)); ?>" class="see-more"> <b><?php echo e($home_translations->where('key', 'view all')->first->value->value); ?></b></a>
    <div class="">
      <?php $__currentLoopData = $movies; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $t => $movie): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
      <?php
      $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
        ['user_id', '=', $auth->id],
        ['movie_id', '=', $movie->id],
      ])->first();
      ?>

      <div class="col-lg-2 col-md-3 col-xs-6 col-sm-4">
        <div class="cus_img">
          <div class="genre-slide-image protip" data-pt-placement="outside" data-pt-interactive="false" data-pt-title="#prime-genre-movie-description-block<?php echo e($movie->id); ?>">
           <?php if(!is_null($movie->video_link->iframeurl) || !is_null($movie->video_link->ready_url)): ?>
           <a href="<?php echo e(url('movie/detail',$movie->id)); ?>">
            <?php if($movie->thumbnail != null || $movie->thumbnail != ''): ?>
            <img src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" class="img-responsive" alt="genre-image">
            <?php else: ?>
            <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
            <?php endif; ?>
          </a>
          <?php else: ?>
          <a data-toggle="modal" href="#myModal" data-title="<?php echo e($item->title); ?>" data-src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" data-id="<?php echo e($item->id); ?>" class="btn btn-white imag" title="Zoom">
           <?php if($movie->thumbnail != null || $movie->thumbnail != ''): ?>
           <img src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" class="img-responsive" alt="genre-image">
           <?php else: ?>
           <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
           <?php endif; ?>
         </a>
         <?php endif; ?>
       </div>
      
    </div>
  </div>


  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</div>
</div><?php endif; ?>
</div>
<?php break; ?>

<?php endif; ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>

<?php endif; ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>

<!-- genere Tv Series -->
<?php if(isset($genres)): ?>
<?php $__currentLoopData = $genres; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $genre): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<?php
$all_tvseries = collect();
$fil_tvserieses = $menu->menu_data;
foreach ($fil_tvserieses as $key => $value) {
  if (isset($value->tvseries)) {
    $all_tvseries->push($value->tvseries);
  }
}

$all_tvseries = $all_tvseries->flatten();
$all_tvseries =  $all_tvseries->filter(function($value, $key) {
  return  $value != null;
});

$seasons = collect();
foreach ($all_tvseries as $item) {
  if ($item->genre_id != null && $item->genre_id != '') {
    $tvseries_genre_list = explode(',', $item->genre_id);
    for($i = 0; $i < count($tvseries_genre_list); $i++) {
      $check = Illuminate\Support\Facades\DB::table('genres')->where('id', '=', trim($tvseries_genre_list[$i]))->get();
      if (isset($check[0]) && $check[0]->id == $genre->id) {
        $seasons->push($item);
      }
    }
  }
}
$seasons = $seasons->shuffle()->flatten();
?>
<?php if(count($seasons) > 0): ?>
<?php if(isset($sliderview)): ?>
<?php $__currentLoopData = $sliderview; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $s): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<?php if($s->id==6  && $s->sliderview==1): ?>
<div class="genre-prime-block">
  <?php
  $t4 = DB::table('home_translations')->where('key','=','tv shows')->first();
  ?>
  <?php if($t4->status ==1): ?>
  <div class="container-fluid">
    <h5 class="section-heading inline"><?php echo e($genre->name); ?> <?php echo e($home_translations->where('key', 'tv shows')->first->value->value); ?></h5>
    <a href="<?php echo e(url('tvseries/genre', $genre->id)); ?>" class="see-more"><b><?php echo e($home_translations->where('key', 'view all')->first->value->value); ?></b> </a>
    <div class="genre-prime-slider owl-carousel">
      <?php $__currentLoopData = $seasons; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

      <?php

      $gets1 = App\Season::where('tv_series_id','=',$item->id)->first();


      if(isset($gets1))
      {
       $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
        ['user_id', '=', $auth->id],
        ['season_id', '=', $gets1->id],
      ])->first();
     }

     ?>

     <div class="genre-prime-slide">
      <div class="genre-slide-image protip" data-pt-placement="outside" data-pt-title="#prime-genre-tvseries-description-block<?php echo e($item->id); ?><?php echo e($item->type); ?>">
       <a <?php if(isset($gets1)): ?> href="<?php echo e(url('show/detail',$gets1->id)); ?>" <?php endif; ?>>
        <?php if($item->thumbnail != null): ?>
        <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$item->thumbnail)); ?>" class="img-responsive" alt="genre-image">
        <?php elseif($item->thumbnail != null): ?>
        <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$item->thumbnail)); ?>" class="img-responsive" alt="genre-image">
        <?php else: ?>
        <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
        <?php endif; ?>
      </a>
    </div>
   
  </div>
  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</div>
</div><?php endif; ?>
</div>
<?php break; ?>
<?php elseif($s->id==6  && $s->sliderview==0): ?>
<div class="genre-prime-block">
  <?php
  $t4 = DB::table('home_translations')->where('key','=','tv shows')->first();
  ?>
  <?php if($t4->status ==1): ?>
  <div class="container-fluid">
    <h5 class="section-heading inline"><?php echo e($genre->name); ?> <?php echo e($home_translations->where('key', 'tv shows')->first->value->value); ?></h5>
    <a href="<?php echo e(url('tvseries/genre', $genre->id)); ?>" class="see-more"><b><?php echo e($home_translations->where('key', 'view all')->first->value->value); ?></b> </a>
    <div class="">
      <?php $__currentLoopData = $seasons; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

      <?php

      $gets1 = App\Season::where('tv_series_id','=',$item->id)->first();


      if(isset($gets1))
      {
       $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
        ['user_id', '=', $auth->id],
        ['season_id', '=', $gets1->id],
      ])->first();
     }

     ?>


     <div class="col-lg-2 col-md-3 col-xs-6 col-sm-4">
      <div class="cus_img">

       <div class="genre-slide-image protip" data-pt-placement="outside" data-pt-interactive="false" data-pt-title="#prime-genre-tvseries-description-block<?php echo e($item->id); ?><?php echo e($item->type); ?>">

         <a <?php if(isset($gets1)): ?> href="<?php echo e(url('show/detail',$gets1->id)); ?>" <?php endif; ?>>
          <?php if($item->thumbnail != null): ?>
          <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$item->thumbnail)); ?>" class="img-responsive" alt="genre-image">
          <?php elseif($item->thumbnail != null): ?>
          <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$item->thumbnail)); ?>" class="img-responsive" alt="genre-image">
          <?php else: ?>
          <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
          <?php endif; ?>
        </a>
      </div>
      
    </div>
  </div>
  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</div>
</div><?php endif; ?>
</div>
<?php break; ?>
<?php endif; ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>
<?php endif; ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>

<!-- language movies -->
<?php if(isset($a_languages)): ?>
<?php $__currentLoopData = $a_languages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $lang): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<?php
$all_movies = collect();
$fil_movies = $menu->menu_data;
foreach ($fil_movies as $key => $value) {
  if (isset($value->movie)) {
    $all_movies->push($value->movie);
  }
}

$all_movies = $all_movies->flatten();
$all_movies =  $all_movies->filter(function($value, $key) {
  return  $value != null;
});

$movies = null;
$movies = collect();
foreach ($all_movies as $item) {
  if ($item->a_language != null && $item->a_language != '') {
    $movie_lang_list = explode(',', $item->a_language);
    for($i = 0; $i < count($movie_lang_list); $i++) {
      $check = \App\AudioLanguage::find(trim($movie_lang_list[$i]));
      if (isset($check) && $check->id == $lang->id) {
        $movies->push($item);
      }
    }
  }
}
?>
<?php if(count($movies) > 0): ?>
<?php if(isset($sliderview)): ?>
<?php $__currentLoopData = $sliderview; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $s): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<?php if($s->id==7  && $s->sliderview==1): ?>
<div class="genre-prime-block">
  <?php
  $t5 = DB::table('home_translations')->where('key','=','movies in')->first();
  ?>
  <?php if($t5->status==1): ?><div class="container-fluid">
    <h5 class="section-heading inline"><?php echo e($home_translations->where('key', 'movies in')->first->value->value); ?> <?php echo e($lang->language); ?></h5>
    <a href="<?php echo e(url('movies/language', $lang->id)); ?>" class="see-more"><b><?php echo e($home_translations->where('key', 'view all')->first->value->value); ?></b> </a>
    <div class="genre-prime-slider owl-carousel">
      <?php $__currentLoopData = $movies; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $movie): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
      <?php
      $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
        ['user_id', '=', $auth->id],
        ['movie_id', '=', $movie->id],
      ])->first();
      ?>
      <div class="genre-prime-slide">
        <div class="genre-slide-image protip" data-pt-placement="outside" data-pt-title="#prime-lang-movie-description-block<?php echo e($movie->id); ?>">
         <?php if(!is_null($movie->video_link->iframeurl) || !is_null($movie->video_link->ready_url)): ?>
         <a href="<?php echo e(url('movie/detail',$movie->id)); ?>">
          <?php if($movie->thumbnail != null || $movie->thumbnail != ''): ?>
          <img src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" class="img-responsive" alt="genre-image">
          <?php else: ?>
          <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
          <?php endif; ?>
        </a>
        <?php else: ?>
        <a data-toggle="modal" href="#myModal" data-title="<?php echo e($item->title); ?>" data-src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" data-id="<?php echo e($item->id); ?>" class="btn btn-white imag" title="Zoom">
         <?php if($movie->thumbnail != null || $movie->thumbnail != ''): ?>
         <img src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" class="img-responsive" alt="genre-image">
         <?php else: ?>
         <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
         <?php endif; ?>
       </a>
       <?php endif; ?>
     </div>
    
 </div>
 <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</div>
</div><?php endif; ?>
</div>
<?php break; ?>
<?php elseif($s->id==7  && $s->sliderview==0): ?>
<div class="genre-prime-block">
  <?php
  $t5 = DB::table('home_translations')->where('key','=','movies in')->first();
  ?>
  <?php if($t5->status==1): ?><div class="container-fluid">
    <h5 class="section-heading inline"><?php echo e($home_translations->where('key', 'movies in')->first->value->value); ?> <?php echo e($lang->language); ?></h5>
    <a href="<?php echo e(url('movies/language', $lang->id)); ?>" class="see-more"><b><?php echo e($home_translations->where('key', 'view all')->first->value->value); ?></b> </a>
    <div class="">
      <?php $__currentLoopData = $movies; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $movie): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
      <?php
      $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
        ['user_id', '=', $auth->id],
        ['movie_id', '=', $movie->id],
      ])->first();
      ?>
      <div class="col-lg-2 col-md-3 col-xs-6 col-sm-4">
        <div class="cus_img">


          <div class="genre-slide-image protip" data-pt-placement="outside" data-pt-interactive="false" data-pt-title="#prime-lang-movie-description-block<?php echo e($movie->id); ?>">
            <?php if(!is_null($movie->video_link->iframeurl) || !is_null($movie->video_link->ready_url)): ?>
            <a href="<?php echo e(url('movie/detail',$movie->id)); ?>">
              <?php if($movie->thumbnail != null || $movie->thumbnail != ''): ?>
              <img src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" class="img-responsive" alt="genre-image">
              <?php else: ?>
              <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
              <?php endif; ?>
            </a>
            <?php else: ?>
            <a data-toggle="modal" href="#myModal" data-title="<?php echo e($item->title); ?>" data-src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" data-id="<?php echo e($item->id); ?>" class="btn btn-white imag" title="Zoom">
             <?php if($movie->thumbnail != null || $movie->thumbnail != ''): ?>
             <img src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" class="img-responsive" alt="genre-image">
             <?php else: ?>
             <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
             <?php endif; ?>
           </a>
           <?php endif; ?>
         </div>
        
     </div>
   </div>

   <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
 </div>
</div><?php endif; ?>
</div>
<?php break; ?>
<?php endif; ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>
<?php endif; ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>

<!-- language tv shows -->
<?php if(isset($a_languages)): ?>
<?php $__currentLoopData = $a_languages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $lang): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<?php
$all_tvseries = collect();
$fil_tvserieses = $menu->menu_data;
foreach ($fil_tvserieses as $key => $value) {
  if (isset($value->tvseries)) {
    $all_tvseries->push($value->tvseries);
  }
}

$all_tvseries = $all_tvseries->flatten();
$all_tvseries =  $all_tvseries->filter(function($value, $key) {
  return  $value != null;
});

$all_seasons = null;
$all_seasons = collect();

foreach ($all_tvseries as $tv) {
  if ( isset($tv->seasons) && count($tv->seasons) > 0 ) {
    $all_seasons->push($tv->seasons[0]);
  }
}

$all_seasons = $all_seasons->flatten();
$all_seasons =  $all_seasons->filter(function($value, $key) {
  return  $value != null;
});

$seasons = null;
$seasons = collect();
foreach ($all_seasons as $item) {
  if ($item->a_language != null && $item->a_language != '') {
    $season_lang_list = explode(',', $item->a_language);
    for($i = 0; $i < count($season_lang_list); $i++) {
      $check = \App\AudioLanguage::find(trim($season_lang_list[$i]));
      if (isset($check) && $check->id == $lang->id) {
        $seasons->push($item);
      }
    }
  }
}
$seasons = $seasons->flatten();
?>
<?php if(count($seasons) > 0): ?>
<?php if(isset($sliderview)): ?>
<?php $__currentLoopData = $sliderview; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $s): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<?php if($s->id==8  && $s->sliderview==1): ?>
<div class="genre-prime-block">
  <?php
  $t6 = DB::table('home_translations')->where('key','=','tv shows in')->first();
  ?>
  <?php if($t6->status==1): ?><div class="container-fluid">
    <h5 class="section-heading inline"><?php echo e($home_translations->where('key', 'tv shows in')->first->value->value); ?> <?php echo e($lang->language); ?></h5>
    <a href="<?php echo e(url('tvseries/language', $lang->id)); ?>" class="see-more"> <b><?php echo e($home_translations->where('key', 'view all')->first->value->value); ?></b></a>
    <div class="genre-prime-slider owl-carousel">
      <?php $__currentLoopData = $seasons; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
      <?php
      $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
        ['user_id', '=', $auth->id],
        ['season_id', '=', $item->id],
      ])->first();
      ?>
      <div class="genre-prime-slide">
        <div class="genre-slide-image protip" data-pt-placement="outside" data-pt-title="#prime-genre-tvseries-description-block<?php echo e($item->id); ?><?php echo e($item->type); ?>">
          <a href="<?php echo e(url('show/detail',$item->id)); ?>">
            <?php if($item->thumbnail != null): ?>
            <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$item->thumbnail)); ?>" class="img-responsive" alt="genre-image">
            <?php elseif($item->tvseries->thumbnail != null): ?>
            <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$item->tvseries->thumbnail)); ?>" class="img-responsive" alt="genre-image">
            <?php else: ?>
            <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
            <?php endif; ?>
          </a>
        </div>
      
      </div>
      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </div>
  </div><?php endif; ?>
</div>
<?php break; ?>
<?php elseif($s->id==8  && $s->sliderview==0): ?>
<div class="genre-prime-block">
  <?php
  $t6 = DB::table('home_translations')->where('key','=','tv shows in')->first();
  ?>
  <?php if($t6->status==1): ?><div class="container-fluid">
    <h5 class="section-heading inline"><?php echo e($home_translations->where('key', 'tv shows in')->first->value->value); ?> <?php echo e($lang->language); ?></h5>
    <a href="<?php echo e(url('tvseries/language', $lang->id)); ?>" class="see-more"> <b><?php echo e($home_translations->where('key', 'view all')->first->value->value); ?></b></a>
    <div class="">
      <?php $__currentLoopData = $seasons; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
      <?php
      $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
        ['user_id', '=', $auth->id],
        ['season_id', '=', $item->id],
      ])->first();
      ?>
      <div class="col-lg-2 col-md-3 col-xs-6 col-sm-4">
        <div class="cus_img">


          <div class="genre-slide-image protip" data-pt-placement="outside" data-pt-interactive="false" data-pt-title="#prime-genre-tvseries-description-block<?php echo e($item->id); ?><?php echo e($item->type); ?>">

            <a href="<?php echo e(url('show/detail',$item->id)); ?>">
              <?php if($item->thumbnail != null): ?>
              <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$item->thumbnail)); ?>" class="img-responsive" alt="genre-image">
              <?php elseif($item->tvseries->thumbnail != null): ?>
              <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$item->tvseries->thumbnail)); ?>" class="img-responsive" alt="genre-image">
              <?php else: ?>
              <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
              <?php endif; ?>
            </a>
          </div>
         
      </div>
      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </div>
  </div><?php endif; ?>
</div>
<?php break; ?>
<?php endif; ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>
<?php endif; ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>
<?php if(isset($featured_movies) && count($featured_movies) > 0): ?>
<?php if(isset($sliderview)): ?>
<?php $__currentLoopData = $sliderview; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $s): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<?php if($s->id==9  && $s->sliderview==1): ?>
<div class="genre-prime-block">
  <?php
  $t7 = DB::table('home_translations')->where('key','=','featured')->first();
  ?>
  <?php if($t7->status==1): ?>
  <div class="container-fluid">
    <h5 class="section-heading"><?php echo e($home_translations->where('key', 'featured')->first->value->value); ?> <?php echo e($home_translations->where('key', 'movies')->first->value->value); ?></h5>
    <div class="genre-prime-slider owl-carousel">
      <?php $__currentLoopData = $featured_movies; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $movie): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
      <?php
      $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
        ['user_id', '=', $auth->id],
        ['movie_id', '=', $movie->id],
      ])->first();
      ?>
      <div class="genre-prime-slide">
        <div class="genre-slide-image protip" data-pt-placement="outside" data-pt-title="#prime-genre-movie-description-block<?php echo e($movie->id); ?>">
         <?php if(!is_null($movie->video_link->iframeurl) || !is_null($movie->video_link->ready_url)): ?>
         <a href="<?php echo e(url('movie/detail',$movie->id)); ?>">
          <?php if($movie->thumbnail != null || $movie->thumbnail != ''): ?>
          <img src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" class="img-responsive" alt="genre-image">
          <?php else: ?>
          <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
          <?php endif; ?>
        </a>
        <?php else: ?>
        <a data-toggle="modal" href="#myModal" data-title="<?php echo e($item->title); ?>" data-src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" data-id="<?php echo e($item->id); ?>" class="btn btn-white imag" title="Zoom">
         <?php if($movie->thumbnail != null || $movie->thumbnail != ''): ?>
         <img src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" class="img-responsive" alt="genre-image">
         <?php else: ?>
         <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
         <?php endif; ?>
       </a>
       <?php endif; ?>
     </div>
    
 </div>
 <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</div>
</div><?php endif; ?>
</div>
<?php break; ?>
<?php elseif($s->id==9  && $s->sliderview==0): ?>
<div class="genre-prime-block">
  <?php
  $t7 = DB::table('home_translations')->where('key','=','featured')->first();
  ?>
  <?php if($t7->status==1): ?>
  <div class="container-fluid">
    <h5 class="section-heading"><?php echo e($home_translations->where('key', 'featured')->first->value->value); ?> <?php echo e($home_translations->where('key', 'movies')->first->value->value); ?></h5>
    <div class="">
      <?php $__currentLoopData = $featured_movies; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $movie): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
      <?php
      $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
        ['user_id', '=', $auth->id],
        ['movie_id', '=', $movie->id],
      ])->first();
      ?>
      <div class="col-lg-2 col-md-3 col-xs-6 col-sm-4">
        <div class="cus_img">    
          <div class="genre-slide-image protip" data-pt-placement="outside" data-pt-interactive="false" data-pt-title="#prime-genre-movie-description-block<?php echo e($movie->id); ?>">
           <?php if(!is_null($movie->video_link->iframeurl) || !is_null($movie->video_link->ready_url)): ?>
           <a href="<?php echo e(url('movie/detail',$movie->id)); ?>">
            <?php if($movie->thumbnail != null || $movie->thumbnail != ''): ?>
            <img src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" class="img-responsive" alt="genre-image">
            <?php else: ?>
            <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
            <?php endif; ?>
          </a>
          <?php else: ?>
          <a data-toggle="modal" href="#myModal" data-title="<?php echo e($item->title); ?>" data-src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" data-id="<?php echo e($item->id); ?>" class="btn btn-white imag" title="Zoom">
           <?php if($movie->thumbnail != null || $movie->thumbnail != ''): ?>
           <img src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" class="img-responsive" alt="genre-image">
           <?php else: ?>
           <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
           <?php endif; ?>
         </a>
         <?php endif; ?>
       </div>
      
   </div></div>
   <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
 </div>
</div><?php endif; ?>
</div>
<?php break; ?>
<?php endif; ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>
<?php endif; ?>
<?php if(isset($featured_seasons) && count($featured_seasons) > 0): ?>
<?php if(isset($sliderview)): ?>
<?php $__currentLoopData = $sliderview; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $s): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<?php if($s->id==10  && $s->sliderview==1): ?>
<div class="genre-prime-block">
  <?php
  $t8 = DB::table('home_translations')->where('key','=','featured')->first();
  ?>
  <?php if($t8->status==1): ?><div class="container-fluid">
    <h5 class="section-heading"><?php echo e($home_translations->where('key', 'featured')->first->value->value); ?> <?php echo e($home_translations->where('key', 'tv shows')->first->value->value); ?></h5>
    <div class="genre-prime-slider owl-carousel">
      <?php $__currentLoopData = $featured_seasons; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
      <?php
      $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
        ['user_id', '=', $auth->id],
        ['season_id', '=', $item->id],
      ])->first();
      ?>
      <div class="genre-prime-slide">
        <div class="genre-slide-image protip" data-pt-placement="outside" data-pt-title="#prime-genre-tvseries-description-block<?php echo e($item->id); ?><?php echo e($item->type); ?>">
          <a href="<?php echo e(url('show/detail',$item->id)); ?>">
            <?php if($item->thumbnail != null): ?>
            <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$item->thumbnail)); ?>" class="img-responsive" alt="genre-image">
            <?php elseif($item->tvseries->thumbnail != null): ?>
            <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$item->tvseries->thumbnail)); ?>" class="img-responsive" alt="genre-image">
            <?php else: ?>
            <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
            <?php endif; ?>
          </a>
        </div>
      
      </div>
      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </div>
  </div><?php endif; ?>
</div>
<?php break; ?>

<?php elseif($s->id==10  && $s->sliderview==0): ?>
<div class="genre-prime-block">
  <?php
  $t8 = DB::table('home_translations')->where('key','=','featured')->first();
  ?>
  <?php if($t8->status==1): ?><div class="container-fluid">
    <h5 class="section-heading"><?php echo e($home_translations->where('key', 'featured')->first->value->value); ?> <?php echo e($home_translations->where('key', 'tv shows')->first->value->value); ?></h5>
    <div class="">
      <?php $__currentLoopData = $featured_seasons; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
      <?php
      $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
        ['user_id', '=', $auth->id],
        ['season_id', '=', $item->id],
      ])->first();
      ?>
      <div class="col-lg-2 col-md-3 col-xs-6 col-sm-4">
        <div class="cus_img">

          <div class="genre-slide-image protip" data-pt-placement="outside" data-pt-interactive="false" data-pt-title="#prime-genre-tvseries-description-block<?php echo e($item->id); ?><?php echo e($item->type); ?>">

            <a href="<?php echo e(url('show/detail',$item->id)); ?>">
              <?php if($item->thumbnail != null): ?>
              <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$item->thumbnail)); ?>" class="img-responsive" alt="genre-image">
              <?php elseif($item->tvseries->thumbnail != null): ?>
              <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$item->tvseries->thumbnail)); ?>" class="img-responsive" alt="genre-image">
              <?php else: ?>
              <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
              <?php endif; ?>
            </a>
          </div>
        
        </div>
      </div>
      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </div>
  </div><?php endif; ?>
</div>
<?php break; ?>
<?php endif; ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>
<?php endif; ?>
<?php else: ?>
<?php if(isset($sliderview)): ?>
<?php $__currentLoopData = $sliderview; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $s): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<?php if($s->id==1  && $s->sliderview==1): ?>
<!-- watch next movies and tv shows -->
<div class="genre-main-block">
  <?php
  $t9 = DB::table('home_translations')->where('key','=','at the big screen at home')->first();
  ?>
  <?php if($t9->status==1): ?><div class="container-fluid">
    <div class="row">
      <div class="col-md-3">
        <div class="genre-dtl-block">
          <h3 class="section-heading"><?php echo e($home_translations->where('key', 'watch next tv series and movies')->first->value->value); ?></h3>
          <p class="section-dtl"><?php echo e($home_translations->where('key', 'at the big screen at home')->first->value->value); ?></p>

          <a href="<?php echo e(route('showall',['menuid' => $menu->id, 'menuname' => $menu->name])); ?>" class="see-more"> <b><?php echo e($home_translations->where('key', 'view all')->first->value->value); ?></b></a>
        </div>
      </div>
      <div class="col-md-9">
        <div class="genre-main-slider owl-carousel">
          <?php if(isset($all_mix)): ?>
          <?php $__currentLoopData = $all_mix; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
          <?php
          if ($item->type == 'S') {
           $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
            ['user_id', '=', $auth->id],
            ['season_id', '=', $item->id],
          ])->first();
         } elseif ($item->type == 'M') {
          $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
            ['user_id', '=', $auth->id],
            ['movie_id', '=', $item->id],
          ])->first();
        }
        ?>
        <?php if($item->type == 'S'): ?>
        <div class="genre-slide">
          <div class="genre-slide-image">
            <a href="<?php echo e(url('show/detail/'.$item->id)); ?>">
              <?php if($item->thumbnail != null): ?>
              <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$item->thumbnail)); ?>" class="img-responsive" alt="genre-image">
              <?php elseif($item->tvseries->thumbnail != null): ?>
              <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$item->tvseries->thumbnail)); ?>" class="img-responsive" alt="genre-image">
              <?php else: ?>
              <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
              <?php endif; ?>
            </a>
          </div>
          <div class="genre-slide-dtl">
            <h5 class="genre-dtl-heading"><a href="<?php echo e(url('show/detail/'.$item->id)); ?>"><?php echo e($item->tvseries->title); ?></a></h5>
          </div>
        </div>
        <?php elseif($item->type == 'M'): ?>
        <div class="genre-slide">
          <div class="genre-slide-image">
           <?php if(!is_null($item->video_link->iframeurl) || !is_null($item->video_link->ready_url)): ?>
           <a href="<?php echo e(url('movie/detail/'.$item->id)); ?>">
            <?php if($item->thumbnail != null): ?>
            <img src="<?php echo e(asset('images/movies/thumbnails/'.$item->thumbnail)); ?>" class="img-responsive" alt="genre-image">
            <?php else: ?>
            <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
            <?php endif; ?>
          </a>
          <?php else: ?>
          <a data-toggle="modal" href="#myModal" data-title="<?php echo e($item->title); ?>" data-src="<?php echo e(asset('images/movies/thumbnails/'.$item->thumbnail)); ?>" data-id="<?php echo e($item->id); ?>" class="btn btn-white imag" title="Zoom">
            <?php if($item->thumbnail != null): ?>
            <img src="<?php echo e(asset('images/movies/thumbnails/'.$item->thumbnail)); ?>" class="img-responsive" alt="genre-image">
            <?php else: ?>
            <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
            <?php endif; ?>
          </a>
          <?php endif; ?>
        </div>
        <div class="genre-slide-dtl">
          <h5 class="genre-dtl-heading">
           <?php if(!is_null($item->video_link->iframeurl) || !is_null($item->video_link->ready_url)): ?>
           <a href="<?php echo e(url('movie/detail/'.$item->id)); ?>"><?php echo e($item->title); ?></a>
           <?php else: ?>
           <a href="<?php echo e(route('home')); ?>"><?php echo e($item->title); ?></a>
           <?php endif; ?>

         </h5>
       </div>
     </div>
     <?php endif; ?>
     <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
     <?php endif; ?>
   </div>
 </div>
</div>
</div><?php endif; ?>
</div>
<?php break; ?>
<?php elseif($s->id==1  && $s->sliderview==0): ?>
<div class="genre-main-block">
  <?php
  $t9 = DB::table('home_translations')->where('key','=','at the big screen at home')->first();
  ?>
  <?php if($t9->status==1): ?><div class="container-fluid">
    <div class="row">
      <div class="col-md-3">
        <div class="genre-dtl-block">
          <h3 class="section-heading"><?php echo e($home_translations->where('key', 'watch next tv series and movies')->first->value->value); ?></h3>
          <p class="section-dtl"><?php echo e($home_translations->where('key', 'at the big screen at home')->first->value->value); ?></p>

          <a href="<?php echo e(route('showall',['menuid' => $menu->id, 'menuname' => $menu->name])); ?>" class="see-more"> <b><?php echo e($home_translations->where('key', 'view all')->first->value->value); ?></b></a>
        </div>
      </div>
      <div class="col-md-9">
        <div class="cus_img">
          <?php if(isset($all_mix)): ?>
          <?php $__currentLoopData = $all_mix; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
          <?php
          if ($item->type == 'S') {
           $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
            ['user_id', '=', $auth->id],
            ['season_id', '=', $item->id],
          ])->first();
         } elseif ($item->type == 'M') {
          $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
            ['user_id', '=', $auth->id],
            ['movie_id', '=', $item->id],
          ])->first();
        }
        ?>
        <?php if($item->type == 'S'): ?>
        <div class="col-lg-4 col-md-9 col-xs-6 col-sm-6">
          <div class="genre-slide-image">
            <a href="<?php echo e(url('show/detail/'.$item->id)); ?>">
              <?php if($item->thumbnail != null): ?>
              <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$item->thumbnail)); ?>" class="img-responsive" alt="genre-image">
              <?php elseif($item->tvseries->thumbnail != null): ?>
              <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$item->tvseries->thumbnail)); ?>" class="img-responsive" alt="genre-image">
              <?php else: ?>
              <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
              <?php endif; ?>
            </a>
          </div>
          <div class="genre-slide-dtl">
            <h5 class="genre-dtl-heading"><a href="<?php echo e(url('show/detail/'.$item->id)); ?>"><?php echo e($item->tvseries->title); ?></a></h5>
          </div>
        </div>
        <?php elseif($item->type == 'M'): ?>
        <div class="col-lg-4 col-md-9 col-xs-6 col-sm-6">
          <div class="genre-slide-image">
           <?php if(!is_null($item->video_link->iframeurl) || !is_null($item->video_link->ready_url)): ?>
           <a href="<?php echo e(url('movie/detail/'.$item->id)); ?>">
            <?php if($item->thumbnail != null): ?>
            <img src="<?php echo e(asset('images/movies/thumbnails/'.$item->thumbnail)); ?>" class="img-responsive" alt="genre-image">
            <?php else: ?>
            <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
            <?php endif; ?>
          </a>
          <?php else: ?>
          <a data-toggle="modal" href="#myModal" data-title="<?php echo e($item->title); ?>" data-src="<?php echo e(asset('images/movies/thumbnails/'.$item->thumbnail)); ?>" data-id="<?php echo e($item->id); ?>" class="btn btn-white imag" title="Zoom">
            <?php if($item->thumbnail != null): ?>
            <img src="<?php echo e(asset('images/movies/thumbnails/'.$item->thumbnail)); ?>" class="img-responsive" alt="genre-image">
            <?php else: ?>
            <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
            <?php endif; ?>
          </a>
          <?php endif; ?>
        </div>
        <div class="genre-slide-dtl">
          <h5 class="genre-dtl-heading">
           <?php if(!is_null($item->video_link->iframeurl) || !is_null($item->video_link->ready_url)): ?>
           <a href="<?php echo e(url('movie/detail/'.$item->id)); ?>"><?php echo e($item->title); ?></a>
           <?php else: ?>
           <?php endif; ?>

         </h5>
       </div>
     </div>
     <?php endif; ?>
     <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
     <?php endif; ?>
   </div>
 </div>
</div>
</div><?php endif; ?>
</div>
<?php break; ?>
<?php endif; ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>
<!-- next movies -->
<?php if(isset($sliderview)): ?>
<?php $__currentLoopData = $sliderview; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $s): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<?php if($s->id==2  && $s->sliderview==1): ?>
<div class="genre-main-block">
  <?php
  $t10 = DB::table('home_translations')->where('key','=','at the big screen at home')->first();
  ?>
  <?php if($t10->status==1): ?><div class="container-fluid">
    <div class="row">
      <div class="col-md-3">
        <div class="genre-dtl-block">
          <h3 class="section-heading"><?php echo e($home_translations->where('key', 'watch next movies')->first->value->value); ?></h3>
          <p class="section-dtl"><?php echo e($home_translations->where('key', 'at the big screen at home')->first->value->value); ?></p>
          <a href="<?php echo e(route('showall2')); ?>" class="see-more"> <b><?php echo e($home_translations->where('key', 'view all')->first->value->value); ?></b></a>
        </div>
      </div>
      <div class="col-md-9">
        <div class="genre-main-slider owl-carousel">
          <?php if(isset($movies)): ?>
          <?php $__currentLoopData = $movies; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $movie): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
          <?php
          $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
            ['user_id', '=', $auth->id],
            ['movie_id', '=', $movie->id],
          ])->first();
          ?>
          <div class="genre-slide">
            <div class="genre-slide-image">
             <?php if(!is_null($movie->video_link->iframeurl) || !is_null($movie->video_link->ready_url)): ?>
             <a href="<?php echo e(url('movie/detail/'.$movie->id)); ?>">
              <?php if($movie->thumbnail != null): ?>
              <img src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" class="img-responsive" alt="genre-image">
              <?php else: ?>
              <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
              <?php endif; ?>
            </a>
            <?php else: ?>
            <a data-toggle="modal" href="#myModal" data-title="<?php echo e($item->title); ?>" data-src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" data-id="<?php echo e($item->id); ?>" class="btn btn-white imag" title="Zoom">
              <?php if($movie->thumbnail != null): ?>
              <img src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" class="img-responsive" alt="genre-image">
              <?php else: ?>
              <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
              <?php endif; ?>
            </a>
            <?php endif; ?>
          </div>
          <div class="genre-slide-dtl">
            <h5 class="genre-dtl-heading">
             <?php if(!is_null($movie->video_link->iframeurl) || !is_null($movie->video_link->ready_url)): ?>
             <a href="<?php echo e(url('movie/detail/'.$movie->id)); ?>"><?php echo e($movie->title); ?></a>
             <?php else: ?>
             <?php endif; ?>
           </h5>
         </div>
       </div>
       <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
       <?php endif; ?>
     </div>
   </div>
 </div>
</div><?php endif; ?>
</div>

<?php break; ?>
<?php elseif($s->id==2  && $s->sliderview==0): ?>
<div class="genre-main-block">
  <?php
  $t10 = DB::table('home_translations')->where('key','=','at the big screen at home')->first();
  ?>
  <?php if($t10->status==1): ?><div class="container-fluid">
    <div class="row">
      <div class="col-md-3">
        <div class="genre-dtl-block">
          <h3 class="section-heading"><?php echo e($home_translations->where('key', 'watch next movies')->first->value->value); ?></h3>
          <p class="section-dtl"><?php echo e($home_translations->where('key', 'at the big screen at home')->first->value->value); ?></p>
          <a href="<?php echo e(route('showall2')); ?>" class="see-more"> <b><?php echo e($home_translations->where('key', 'view all')->first->value->value); ?></b></a>
        </div>
      </div>
      <div class="col-md-9">
        <div class="cus_img">
          <?php if(isset($movies)): ?>
          <?php $__currentLoopData = $movies; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $movie): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
          <?php
          $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
            ['user_id', '=', $auth->id],
            ['movie_id', '=', $movie->id],
          ])->first();
          ?>
          <div class="col-lg-3 col-md-9 col-xs-3 col-sm-6">
            <div class="genre-slide-image">
             <?php if(!is_null($movie->video_link->iframeurl) || !is_null($movie->video_link->ready_url)): ?>
             <a href="<?php echo e(url('movie/detail/'.$movie->id)); ?>">
              <?php if($movie->thumbnail != null): ?>
              <img src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" class="img-responsive" alt="genre-image">
              <?php else: ?>
              <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
              <?php endif; ?>
            </a>
            <?php else: ?>
            <a data-toggle="modal" href="#myModal" data-title="<?php echo e($item->title); ?>" data-src="<?php echo e(asset('imimages/movies/thumbnails/'.$movie->thumbnail)); ?>" data-id="<?php echo e($item->id); ?>" class="btn btn-white imag" title="Zoom">
             <?php if($movie->thumbnail != null): ?>
             <img src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" class="img-responsive" alt="genre-image">
             <?php else: ?>
             <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
             <?php endif; ?>
           </a>
           <?php endif; ?>
         </div>
         <div class="genre-slide-dtl">
          <h5 class="genre-dtl-heading">
           <?php if(!is_null($movie->video_link->iframeurl) || !is_null($movie->video_link->ready_url)): ?>
           <a href="<?php echo e(url('movie/detail/'.$movie->id)); ?>"><?php echo e($movie->title); ?></a>
           <?php else: ?>
           <?php endif; ?>
         </h5>
       </div>
     </div>
     <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
     <?php endif; ?>
   </div>
 </div>
</div>
</div><?php endif; ?>
</div>

<?php break; ?>
<?php endif; ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>
<!-- next tv shows -->
<?php if(isset($sliderview)): ?>
<?php $__currentLoopData = $sliderview; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $s): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<?php if($s->id==3  && $s->sliderview==1): ?>
<div class="genre-main-block">

  <?php
  $t11 = DB::table('home_translations')->where('key','=','at the big screen at home')->first();
  ?>
  <?php if($t11->status==1): ?><div class="container-fluid">
    <div class="row">
      <div class="col-md-3">
        <div class="genre-dtl-block">
          <h3 class="section-heading"><?php echo e($home_translations->where('key', 'watch next tv series')->first->value->value); ?></h3>
          <p class="section-dtl"><?php echo e($home_translations->where('key', 'at the big screen at home')->first->value->value); ?></p>
          <a href="<?php echo e(route('showall3')); ?>" class="see-more"> <b><?php echo e($home_translations->where('key', 'view all')->first->value->value); ?></b></a>
        </div>
      </div>
      <div class="col-md-9">
        <div class="genre-main-slider owl-carousel">
          <?php if(isset($tvserieses)): ?>

          <?php $__currentLoopData = $tvserieses; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $tvseries): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
          <?php $__currentLoopData = $tvseries->seasons; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
          <?php

          $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
            ['user_id', '=', $auth->id],
            ['season_id', '=', $item->id],
          ])->first();
          ?>
          <div class="genre-slide">
            <div class="genre-slide-image">
              <a href="<?php echo e(url('show/detail/'.$item->id)); ?>">
                <?php if($item->thumbnail != null): ?>
                <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$item->thumbnail)); ?>" class="img-responsive" alt="genre-image">
                <?php elseif($item->tvseries->thumbnail != null): ?>
                <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$item->tvseries->thumbnail)); ?>" class="img-responsive" alt="genre-image">
                <?php else: ?>
                <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
                <?php endif; ?>
              </a>
            </div>
            <div class="genre-slide-dtl">
              <h5 class="genre-dtl-heading"><a href="<?php echo e(url('show/detail/'.$item->id)); ?>"><?php echo e($item->tvseries->title); ?></a></h5>
            </div>
          </div>
          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
          <?php endif; ?>
        </div>
      </div>
    </div>
  </div><?php endif; ?>
</div>
<?php break; ?>
<?php elseif($s->id==3  && $s->sliderview==0): ?>
<div class="genre-main-block">
  <?php
  $t11 = DB::table('home_translations')->where('key','=','at the big screen at home')->first();
  ?>
  <?php if($t11->status==1): ?><div class="container-fluid">
    <div class="row">
      <div class="col-md-3">
        <div class="genre-dtl-block">
          <h3 class="section-heading"><?php echo e($home_translations->where('key', 'watch next tv series')->first->value->value); ?></h3>
          <p class="section-dtl"><?php echo e($home_translations->where('key', 'at the big screen at home')->first->value->value); ?></p>
          <a href="<?php echo e(route('showall3')); ?>" class="see-more"> <b><?php echo e($home_translations->where('key', 'view all')->first->value->value); ?></b></a>
        </div>
      </div>
      <div class="col-md-9">
        <div class="cus_img">
          <?php if(isset($tvserieses)): ?>
          <?php $__currentLoopData = $tvserieses; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $tvseries): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
          <?php $__currentLoopData = $tvseries->seasons; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
          <?php
          $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
            ['user_id', '=', $auth->id],
            ['season_id', '=', $item->id],
          ])->first();
          ?>
          <div class="col-lg-3 col-md-9 col-xs-6 col-sm-6">
            <div class="genre-slide-image">
              <a href="<?php echo e(url('show/detail/'.$item->id)); ?>">
                <?php if($item->thumbnail != null): ?>
                <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$item->thumbnail)); ?>" class="img-responsive" alt="genre-image">
                <?php elseif($item->tvseries->thumbnail != null): ?>
                <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$item->tvseries->thumbnail)); ?>" class="img-responsive" alt="genre-image">
                <?php else: ?>
                <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
                <?php endif; ?>
              </a>
            </div>
            <div class="genre-slide-dtl">
              <h5 class="genre-dtl-heading"><a href="<?php echo e(url('show/detail/'.$item->id)); ?>"><?php echo e($item->tvseries->title); ?></a></h5>
            </div>
          </div>
          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
          <?php endif; ?>
        </div>
      </div>
    </div>
  </div><?php endif; ?>
</div>

<?php break; ?>
<?php endif; ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>
<!-- Genre Movies -->
<?php if(isset($genres)): ?>
<?php $__currentLoopData = $genres; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $genre): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<?php
$all_movies = collect();
$fil_movies = $menu->menu_data;
foreach ($fil_movies as $key => $value) {
  if ( isset($value->movie) ) {
    $all_movies->push($value->movie);
  }
}

$all_movies = $all_movies->flatten();
$all_movies =  $all_movies->filter(function($value, $key) {
  return  $value != null;
});

$movies = null;
$movies = collect();
foreach ($all_movies as $item) {
  if ($item->genre_id != null && $item->genre_id != '') {
    $movie_genre_list = explode(',', $item->genre_id);
    for($i = 0; $i < count($movie_genre_list); $i++) {
      $check = Illuminate\Support\Facades\DB::table('genres')->where('id', '=', trim($movie_genre_list[$i]))->get();
      if (isset($check[0]) && $check[0]->id == $genre->id) {
        $movies->push($item);
      }
    }
  }
}
?>
<?php if(count($movies) > 0): ?>
<?php if(isset($sliderview)): ?>
<?php $__currentLoopData = $sliderview; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $s): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<?php if($s->id==5  && $s->sliderview==1): ?>
<div class="genre-main-block">
  <?php
  $t12 = DB::table('home_translations')->where('key','=','view all')->first();
  ?>
  <?php if($t12->status==1): ?><div class="container-fluid">
    <div class="row">
      <div class="col-md-3">
        <div class="genre-dtl-block">
          <h3 class="section-heading"><?php echo e($genre->name); ?> <?php echo e($home_translations->where('key', 'movies')->first->value->value); ?></h3>
          <p class="section-dtl"><?php echo e($home_translations->where('key', 'at the big screen at home')->first->value->value); ?></p>
          <a href="<?php echo e(url('movies/genre', $genre->id)); ?>" class="btn-more"><?php echo e($home_translations->where('key', 'view all')->first->value->value); ?></a>
        </div>
      </div>
      <div class="col-md-9">
        <div class="genre-main-slider owl-carousel">
          <?php if(isset($movies)): ?>
          <?php $__currentLoopData = $movies; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $movie): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
          <?php
          $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
            ['user_id', '=', $auth->id],
            ['movie_id', '=', $item->id],
          ])->first();
          ?>
          <div class="genre-slide">
            <div class="genre-slide-image">
             <?php if(!is_null($movie->video_link->iframeurl) || !is_null($movie->video_link->ready_url)): ?>
             <a href="<?php echo e(url('movie/detail/'.$movie->id)); ?>">
              <?php if($movie->thumbnail != null): ?>
              <img src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" class="img-responsive" alt="genre-image">
              <?php else: ?>
              <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
              <?php endif; ?>
            </a>
            <?php else: ?> 
            <a data-toggle="modal" href="#myModal" data-title="<?php echo e($item->title); ?>" data-src="<?php echo e(asset('imimages/movies/thumbnails/'.$movie->thumbnail)); ?>" data-id="<?php echo e($item->id); ?>" class="btn btn-white imag" title="Zoom">
             <?php if($movie->thumbnail != null): ?>
             <img src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" class="img-responsive" alt="genre-image">
             <?php else: ?>
             <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
             <?php endif; ?>
           </a>
           <?php endif; ?>
         </div>
         <div class="genre-slide-dtl">
          <h5 class="genre-dtl-heading">
           <?php if(!is_null($movie->video_link->iframeurl) || !is_null($movie->video_link->ready_url)): ?>
           <a href="<?php echo e(url('movie/detail/'.$movie->id)); ?>"><?php echo e($movie->title); ?></a>
           <?php else: ?>
         <?php endif; ?></h5>
       </div>
     </div>
     <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
     <?php endif; ?>
   </div>
 </div>
</div>
</div><?php endif; ?>
</div>
<?php break; ?>
<?php elseif($s->id==5  && $s->sliderview==0): ?>
<div class="genre-main-block">
  <?php
  $t12 = DB::table('home_translations')->where('key','=','view all')->first();
  ?>
  <?php if($t12->status==1): ?><div class="container-fluid">
    <div class="row">
      <div class="col-md-3">
        <div class="genre-dtl-block">
          <h3 class="section-heading"><?php echo e($genre->name); ?> <?php echo e($home_translations->where('key', 'movies')->first->value->value); ?></h3>
          <p class="section-dtl"><?php echo e($home_translations->where('key', 'at the big screen at home')->first->value->value); ?></p>
          <a href="<?php echo e(url('movies/genre', $genre->id)); ?>" class="btn-more"><?php echo e($home_translations->where('key', 'view all')->first->value->value); ?></a>
        </div>
      </div>
      <div class="col-md-9">
        <div class="cus_img">
          <?php if(isset($movies)): ?>
          <?php $__currentLoopData = $movies; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $movie): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
          <?php
          $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
            ['user_id', '=', $auth->id],
            ['movie_id', '=', $item->id],
          ])->first();
          ?>
          <div class="col-lg-3 col-md-9 col-xs-6 col-sm-6">
            <div class="genre-slide-image">
             <?php if(!is_null($movie->video_link->iframeurl) || !is_null($movie->video_link->ready_url)): ?>
             <a href="<?php echo e(url('movie/detail/'.$movie->id)); ?>">
              <?php if($movie->thumbnail != null): ?>
              <img src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" class="img-responsive" alt="genre-image">
              <?php else: ?>
              <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
              <?php endif; ?>
            </a>
            <?php else: ?>
            <a data-toggle="modal" href="#myModal" data-title="<?php echo e($item->title); ?>" data-src="<?php echo e(asset('imimages/movies/thumbnails/'.$movie->thumbnail)); ?>" data-id="<?php echo e($item->id); ?>" class="btn btn-white imag" title="Zoom">
             <?php if($movie->thumbnail != null): ?>
             <img src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" class="img-responsive" alt="genre-image">
             <?php else: ?>
             <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
             <?php endif; ?>
           </a>
           <?php endif; ?>
         </div>
         <div class="genre-slide-dtl">
          <h5 class="genre-dtl-heading">
           <?php if(!is_null($movie->video_link->iframeurl) || !is_null($movie->video_link->ready_url)): ?>
           <a href="<?php echo e(url('movie/detail/'.$movie->id)); ?>"><?php echo e($movie->title); ?></a>
           <?php else: ?>
         <?php endif; ?></h5>
       </div>
     </div>
     <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
     <?php endif; ?>
   </div>
 </div>
</div>
</div><?php endif; ?>
</div>

<?php break; ?>
<?php endif; ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>
<?php endif; ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>

<!-- Genre Tv Shows -->
<?php if(isset($genres)): ?>
<?php $__currentLoopData = $genres; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $genre): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<?php
$all_tvseries = collect();
$fil_tvserieses = $menu->menu_data;
foreach ($fil_tvserieses as $key => $value) {
  if (isset($value->tvseries)) {
    $all_tvseries->push($value->tvseries);
  }
}

$all_tvseries = $all_tvseries->flatten();
$all_tvseries =  $all_tvseries->filter(function($value, $key) {
  return  $value != null;
});

$seasons = collect();
foreach ($all_tvseries as $item) {
  if ($item->genre_id != null && $item->genre_id != '') {
    $tvseries_genre_list = explode(',', $item->genre_id);
    for($i = 0; $i < count($tvseries_genre_list); $i++) {
      $check = Illuminate\Support\Facades\DB::table('genres')->where('id', '=', trim($tvseries_genre_list[$i]))->get();
      if (isset($check[0]) && $check[0]->id == $genre->id) {
        $seasons->push($item->seasons);
      }
    }
  }
}
$seasons = $seasons->shuffle()->flatten();
?>
<?php if(count($seasons) > 0): ?>
<?php if(isset($sliderview)): ?>
<?php $__currentLoopData = $sliderview; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $s): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<?php if($s->id==6  && $s->sliderview==1): ?>
<div class="genre-main-block">
  <?php
  $t13 = DB::table('home_translations')->where('key','=','view all')->first();
  ?>
  <?php if($t13->status==1): ?><div class="container-fluid">
    <div class="row">
      <div class="col-md-3">
        <div class="genre-dtl-block">
          <h3 class="section-heading"><?php echo e($genre->name); ?> <?php echo e($home_translations->where('key', 'tv shows')->first->value->value); ?></h3>
          <p class="section-dtl"><?php echo e($home_translations->where('key', 'at the big screen at home')->first->value->value); ?></p>
          <a href="<?php echo e(url('tvseries/genre', $genre->id)); ?>" class="btn-more"><?php echo e($home_translations->where('key', 'view all')->first->value->value); ?></a>
        </div>
      </div>
      <div class="col-md-9">
        <div class="genre-main-slider owl-carousel">
          <?php if(isset($seasons)): ?>
          <?php $__currentLoopData = $seasons; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
          <?php
          $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
            ['user_id', '=', $auth->id],
            ['season_id', '=', $item->id],
          ])->first();
          ?>
          <div class="genre-slide">
            <div class="genre-slide-image">
              <a href="<?php echo e(url('show/detail/'.$item->id)); ?>">
                <?php if($item->thumbnail != null): ?>
                <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$item->thumbnail)); ?>" class="img-responsive" alt="genre-image">
                <?php elseif($item->tvseries->thumbnail != null): ?>
                <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$item->tvseries->thumbnail)); ?>" class="img-responsive" alt="genre-image">
                <?php else: ?>
                <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
                <?php endif; ?>
              </a>
            </div>
            <div class="genre-slide-dtl">
              <h5 class="genre-dtl-heading"><a href="<?php echo e(url('show/detail/'.$item->id)); ?>"><?php echo e($item->tvseries->title); ?></a></h5>
            </div>
          </div>
          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
          <?php endif; ?>
        </div>
      </div>
    </div>
  </div><?php endif; ?>
</div>
<?php break; ?>

<?php elseif($s->id==6  && $s->sliderview==0): ?>
<div class="genre-main-block">
  <?php
  $t13 = DB::table('home_translations')->where('key','=','view all')->first();
  ?>
  <?php if($t13->status==1): ?><div class="container-fluid">
    <div class="row">
      <div class="col-md-3">
        <div class="genre-dtl-block">
          <h3 class="section-heading"><?php echo e($genre->name); ?> <?php echo e($home_translations->where('key', 'tv shows')->first->value->value); ?></h3>
          <p class="section-dtl"><?php echo e($home_translations->where('key', 'at the big screen at home')->first->value->value); ?></p>
          <a href="<?php echo e(url('tvseries/genre', $genre->id)); ?>" class="btn-more"><?php echo e($home_translations->where('key', 'view all')->first->value->value); ?></a>
        </div>
      </div>
      <div class="col-md-9">
        <div class="cus_img">
          <?php if(isset($seasons)): ?>
          <?php $__currentLoopData = $seasons; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
          <?php
          $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
            ['user_id', '=', $auth->id],
            ['season_id', '=', $item->id],
          ])->first();
          ?>
          <div class="col-lg-3 col-md-9 col-xs-6 col-sm-6">
            <div class="genre-slide-image">
              <a href="<?php echo e(url('show/detail/'.$item->id)); ?>">
                <?php if($item->thumbnail != null): ?>
                <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$item->thumbnail)); ?>" class="img-responsive" alt="genre-image">
                <?php elseif($item->tvseries->thumbnail != null): ?>
                <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$item->tvseries->thumbnail)); ?>" class="img-responsive" alt="genre-image">
                <?php else: ?>
                <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
                <?php endif; ?>
              </a>
            </div>
            <div class="genre-slide-dtl">
              <h5 class="genre-dtl-heading"><a href="<?php echo e(url('show/detail/'.$item->id)); ?>"><?php echo e($item->tvseries->title); ?></a></h5>
            </div>
          </div>
          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
          <?php endif; ?>
        </div>
      </div>
    </div>
  </div><?php endif; ?>
</div>

<?php break; ?>
<?php endif; ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>
<?php endif; ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>

<!-- Language Movies -->
<?php if(isset($a_languages)): ?>
<?php $__currentLoopData = $a_languages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $lang): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<?php
$all_movies = collect();
$fil_movies = $menu->menu_data;
foreach ($fil_movies as $key => $value) {
  if (isset($value->movie)) {
    $all_movies->push($value->movie);
  }
}

$all_movies = $all_movies->flatten();
$all_movies =  $all_movies->filter(function($value, $key) {
  return  $value != null;
});

$movies = null;
$movies = collect();
foreach ($all_movies as $item) {
  if ($item->a_language != null && $item->a_language != '') {
    $movie_lang_list = explode(',', $item->a_language);
    for($i = 0; $i < count($movie_lang_list); $i++) {
      $check = \App\AudioLanguage::find(trim($movie_lang_list[$i]));
      if (isset($check) && $check->id == $lang->id) {
        $movies->push($item);
      }
    }
  }
}
?>
<?php if(count($movies) > 0): ?>
<?php if(isset($sliderview)): ?>
<?php $__currentLoopData = $sliderview; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $s): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<?php if($s->id==7  && $s->sliderview==1): ?>
<div class="genre-main-block">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-3">
        <div class="genre-dtl-block">
          <h3 class="section-heading"><?php echo e($home_translations->where('key', 'movies in')->first->value->value); ?> <?php echo e($lang->language); ?></h3>
          <p class="section-dtl"><?php echo e($home_translations->where('key', 'at the big screen at home')->first->value->value); ?></p>
          <a href="<?php echo e(url('movies/language', $lang->id)); ?>" class="btn-more"><?php echo e($home_translations->where('key', 'view all')->first->value->value); ?></a>
        </div>
      </div>
      <div class="col-md-9">
        <div class="genre-main-slider owl-carousel">
          <?php if(isset($movies)): ?>
          <?php $__currentLoopData = $movies; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $movie): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
          <?php
          $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
            ['user_id', '=', $auth->id],
            ['movie_id', '=', $item->id],
          ])->first();
          ?>
          <div class="genre-slide">
            <div class="genre-slide-image">
             <?php if(!is_null($movie->video_link->iframeurl) || !is_null($movie->video_link->ready_url)): ?>
             <a href="<?php echo e(url('movie/detail/'.$movie->id)); ?>">
              <?php if($movie->thumbnail != null): ?>
              <img src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" class="img-responsive" alt="genre-image">
              <?php else: ?>
              <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
              <?php endif; ?>
            </a>
            <?php else: ?>
            <a data-toggle="modal" href="#myModal" data-title="<?php echo e($item->title); ?>" data-src="<?php echo e(asset('imimages/movies/thumbnails/'.$movie->thumbnail)); ?>" data-id="<?php echo e($item->id); ?>" class="btn btn-white imag" title="Zoom">
             <?php if($movie->thumbnail != null): ?>
             <img src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" class="img-responsive" alt="genre-image">
             <?php else: ?>
             <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
             <?php endif; ?>
           </a>
           <?php endif; ?>
         </div>
         <div class="genre-slide-dtl">
          <h5 class="genre-dtl-heading">
           <?php if(!is_null($movie->video_link->iframeurl) || !is_null($movie->video_link->ready_url)): ?>
           <a href="<?php echo e(url('movie/detail/'.$movie->id)); ?>"><?php echo e($movie->title); ?></a>
           <?php else: ?>
         <?php endif; ?></h5>
       </div>
     </div>
     <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
     <?php endif; ?>
   </div>
 </div>
</div>
</div>
</div>
<?php break; ?>
<?php elseif($s->id==7  && $s->sliderview==0): ?>
<div class="genre-main-block">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-3">
        <div class="genre-dtl-block">
          <h3 class="section-heading"><?php echo e($home_translations->where('key', 'movies in')->first->value->value); ?> <?php echo e($lang->language); ?></h3>
          <p class="section-dtl"><?php echo e($home_translations->where('key', 'at the big screen at home')->first->value->value); ?></p>
          <a href="<?php echo e(url('movies/language', $lang->id)); ?>" class="btn-more"><?php echo e($home_translations->where('key', 'view all')->first->value->value); ?></a>
        </div>
      </div>
      <div class="col-md-9">
        <div class="cus_img">
          <?php if(isset($movies)): ?>
          <?php $__currentLoopData = $movies; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $movie): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
          <?php
          $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
            ['user_id', '=', $auth->id],
            ['movie_id', '=', $item->id],
          ])->first();
          ?>
          <div class="col-lg-3 col-md-9 col-xs-6 col-sm-6">
            <div class="genre-slide-image">
             <?php if(!is_null($movie->video_link->iframeurl) || !is_null($movie->video_link->ready_url)): ?>
             <a href="<?php echo e(url('movie/detail/'.$movie->id)); ?>">
              <?php if($movie->thumbnail != null): ?>
              <img src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" class="img-responsive" alt="genre-image">
              <?php else: ?>
              <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
              <?php endif; ?>
            </a>
            <?php else: ?>
            <a data-toggle="modal" href="#myModal" data-title="<?php echo e($item->title); ?>" data-src="<?php echo e(asset('imimages/movies/thumbnails/'.$movie->thumbnail)); ?>" data-id="<?php echo e($item->id); ?>" class="btn btn-white imag" title="Zoom">
             <?php if($movie->thumbnail != null): ?>
             <img src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" class="img-responsive" alt="genre-image">
             <?php else: ?>
             <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
             <?php endif; ?>
           </a>
           <?php endif; ?>
         </div>
         <div class="genre-slide-dtl">
          <h5 class="genre-dtl-heading">
           <?php if(!is_null($movie->video_link->iframeurl) || !is_null($movie->video_link->ready_url)): ?>
           <a href="<?php echo e(url('movie/detail/'.$movie->id)); ?>"><?php echo e($movie->title); ?></a>
           <?php else: ?>
         <?php endif; ?></h5>
       </div>
     </div>
     <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
     <?php endif; ?>
   </div>
 </div>
</div>
</div>
</div>

<?php break; ?>
<?php endif; ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>
<?php endif; ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>
<!-- Language TV Shows -->
<?php if(isset($a_languages)): ?>
<?php $__currentLoopData = $a_languages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $lang): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<?php
$all_tvseries = collect();
$fil_tvserieses = $menu->menu_data;
foreach ($fil_tvserieses as $key => $value) {
  if (isset($value->tvseries)) {
    $all_tvseries->push($value->tvseries);
  }
}

$all_tvseries = $all_tvseries->flatten();
$all_tvseries =  $all_tvseries->filter(function($value, $key) {
  return  $value != null;
});

$all_seasons = null;
$all_seasons = collect();

foreach ($all_tvseries as $tv) {
  if ( isset($tv->seasons) && count($tv->seasons) > 0 ) {
    $all_seasons->push($tv->seasons);
  }
}
$all_seasons = $all_seasons->flatten();
$all_seasons =  $all_seasons->filter(function($value, $key) {
  return  $value != null;
});

$seasons = null;
$seasons = collect();
foreach ($all_seasons as $item) {
  if ($item->a_language != null && $item->a_language != '') {
    $season_lang_list = explode(',', $item->a_language);
    for($i = 0; $i < count($season_lang_list); $i++) {
      $check = \App\AudioLanguage::find(trim($season_lang_list[$i]));
      if (isset($check) && $check->id == $lang->id) {
        $seasons->push($item);
      }
    }
  }
}
$seasons = $seasons->flatten();
?>
<?php if(count($seasons) > 0): ?>
<?php if(isset($sliderview)): ?>
<?php $__currentLoopData = $sliderview; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $s): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<?php if($s->id==8  && $s->sliderview==1): ?>
<div class="genre-main-block">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-3">
        <div class="genre-dtl-block">
          <h3 class="section-heading"><?php echo e($home_translations->where('key', 'tv shows in')->first->value->value); ?> <?php echo e($lang->language); ?></h3>
          <p class="section-dtl"><?php echo e($home_translations->where('key', 'at the big screen at home')->first->value->value); ?></p>
          <a href="<?php echo e(url('tvseries/language', $lang->id)); ?>" class="btn-more"><?php echo e($home_translations->where('key', 'view all')->first->value->value); ?></a>
        </div>
      </div>
      <div class="col-md-9">
        <div class="genre-main-slider owl-carousel">
          <?php if(isset($seasons)): ?>
          <?php $__currentLoopData = $seasons; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
          <?php
          $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
            ['user_id', '=', $auth->id],
            ['season_id', '=', $item->id],
          ])->first();
          ?>
          <div class="genre-slide">
            <div class="genre-slide-image">
              <a href="<?php echo e(url('show/detail/'.$item->id)); ?>">
                <?php if($item->thumbnail != null): ?>
                <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$item->thumbnail)); ?>" class="img-responsive" alt="genre-image">
                <?php elseif($item->tvseries->thumbnail != null): ?>
                <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$item->tvseries->thumbnail)); ?>" class="img-responsive" alt="genre-image">
                <?php else: ?>
                <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
                <?php endif; ?>
              </a>
            </div>
            <div class="genre-slide-dtl">
              <h5 class="genre-dtl-heading"><a href="<?php echo e(url('show/detail/'.$item->id)); ?>"><?php echo e($item->tvseries->title); ?></a></h5>
            </div>
          </div>
          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
          <?php endif; ?>
        </div>
      </div>
    </div>
  </div>
</div>
<?php break; ?>
<?php elseif($s->id==8  && $s->sliderview==0): ?>
<div class="genre-main-block">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-3">
        <div class="genre-dtl-block">
          <h3 class="section-heading"><?php echo e($home_translations->where('key', 'tv shows in')->first->value->value); ?> <?php echo e($lang->language); ?></h3>
          <p class="section-dtl"><?php echo e($home_translations->where('key', 'at the big screen at home')->first->value->value); ?></p>
          <a href="<?php echo e(url('tvseries/language', $lang->id)); ?>" class="btn-more"><?php echo e($home_translations->where('key', 'view all')->first->value->value); ?></a>
        </div>
      </div>
      <div class="col-md-9">
        <div class="cus_img">
          <?php if(isset($seasons)): ?>
          <?php $__currentLoopData = $seasons; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
          <?php
          $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
            ['user_id', '=', $auth->id],
            ['season_id', '=', $item->id],
          ])->first();
          ?>
          <div class="col-lg-3 col-md-9 col-xs-6 col-sm-6">
            <div class="genre-slide-image">
              <a href="<?php echo e(url('show/detail/'.$item->id)); ?>">
                <?php if($item->thumbnail != null): ?>
                <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$item->thumbnail)); ?>" class="img-responsive" alt="genre-image">
                <?php elseif($item->tvseries->thumbnail != null): ?>
                <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$item->tvseries->thumbnail)); ?>" class="img-responsive" alt="genre-image">
                <?php else: ?>
                <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
                <?php endif; ?>
              </a>
            </div>
            <div class="genre-slide-dtl">
              <h5 class="genre-dtl-heading"><a href="<?php echo e(url('show/detail/'.$item->id)); ?>"><?php echo e($item->tvseries->title); ?></a></h5>
            </div>
          </div>
          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
          <?php endif; ?>
        </div>
      </div>
    </div>
  </div>
</div>

<?php break; ?>
<?php endif; ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>
<?php endif; ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>
<!-- Featured Movies -->
<?php if(isset($featured_movies) && count($featured_movies) > 0): ?>
<?php if(isset($sliderview)): ?>
<?php $__currentLoopData = $sliderview; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $s): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<?php if($s->id==9  && $s->sliderview==1): ?>
<div class="genre-main-block">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-3">
        <div class="genre-dtl-block">
          <h3 class="section-heading"><?php echo e($home_translations->where('key', 'featured')->first->value->value); ?> <?php echo e($home_translations->where('key', 'movies')->first->value->value); ?></h3>
          <p class="section-dtl"><?php echo e($home_translations->where('key', 'at the big screen at home')->first->value->value); ?></p>
        </div>
      </div>
      <div class="col-md-9">
        <div class="genre-main-slider owl-carousel">
          <?php $__currentLoopData = $featured_movies; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $movie): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
          <?php
          $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
            ['user_id', '=', $auth->id],
            ['movie_id', '=', $item->id],
          ])->first();
          ?>
          <div class="genre-slide">
            <div class="genre-slide-image">
             <?php if(!is_null($movie->video_link->iframeurl) || !is_null($movie->video_link->ready_url)): ?>
             <a href="<?php echo e(url('movie/detail/'.$movie->id)); ?>">
              <?php if($movie->thumbnail != null): ?>
              <img src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" class="img-responsive" alt="genre-image">
              <?php else: ?>
              <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
              <?php endif; ?>
            </a>
            <?php else: ?>
            <a data-toggle="modal" href="#myModal" data-title="<?php echo e($item->title); ?>" data-src="<?php echo e(asset('imimages/movies/thumbnails/'.$movie->thumbnail)); ?>" data-id="<?php echo e($item->id); ?>" class="btn btn-white imag" title="Zoom">
             <?php if($movie->thumbnail != null): ?>
             <img src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" class="img-responsive" alt="genre-image">
             <?php else: ?>
             <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
             <?php endif; ?>
           </a>
           <?php endif; ?>
         </div>
         <div class="genre-slide-dtl">
          <h5 class="genre-dtl-heading">
           <?php if(!is_null($movie->video_link->iframeurl) || !is_null($movie->video_link->ready_url)): ?>
           <a href="<?php echo e(url('movie/detail/'.$movie->id)); ?>"><?php echo e($movie->title); ?></a>
           <?php else: ?>
         <?php endif; ?></h5>
       </div>
     </div>
     <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
   </div>
 </div>
</div>
</div>
</div>
<?php break; ?>
<?php elseif($s->id==9  && $s->sliderview==0): ?>
<div class="genre-main-block">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-3">
        <div class="genre-dtl-block">
          <h3 class="section-heading"><?php echo e($home_translations->where('key', 'featured')->first->value->value); ?> <?php echo e($home_translations->where('key', 'movies')->first->value->value); ?></h3>
          <p class="section-dtl"><?php echo e($home_translations->where('key', 'at the big screen at home')->first->value->value); ?></p>
        </div>
      </div>
      <div class="col-md-9">
        <div class="cus_img">
          <?php $__currentLoopData = $featured_movies; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $movie): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
          <?php
          $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
            ['user_id', '=', $auth->id],
            ['movie_id', '=', $item->id],
          ])->first();
          ?>
          <div class="col-lg-3 col-md-9 col-xs-6 col-sm-6">


            <div class="genre-slide-image">
             <?php if(!is_null($movie->video_link->iframeurl) || !is_null($movie->video_link->ready_url)): ?>
             <a href="<?php echo e(url('movie/detail/'.$movie->id)); ?>">
              <?php if($movie->thumbnail != null): ?>
              <img src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" class="img-responsive" alt="genre-image">
              <?php else: ?>
              <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
              <?php endif; ?>
            </a>
            <?php else: ?>
            <a data-toggle="modal" href="#myModal" data-title="<?php echo e($item->title); ?>" data-src="<?php echo e(asset('imimages/movies/thumbnails/'.$movie->thumbnail)); ?>" data-id="<?php echo e($item->id); ?>" class="btn btn-white imag" title="Zoom">
             <?php if($movie->thumbnail != null): ?>
             <img src="<?php echo e(asset('images/movies/thumbnails/'.$movie->thumbnail)); ?>" class="img-responsive" alt="genre-image">
             <?php else: ?>
             <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
             <?php endif; ?>
           </a>
           <?php endif; ?>
         </div>
         <div class="genre-slide-dtl">
          <h5 class="genre-dtl-heading">
           <?php if(!is_null($movie->video_link->iframeurl) || !is_null($movie->video_link->ready_url)): ?>
           <a href="<?php echo e(url('movie/detail/'.$movie->id)); ?>"><?php echo e($movie->title); ?></a>
           <?php else: ?>
           <?php endif; ?>
         </h5>
       </div>
     </div>
     <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
   </div>
 </div>
</div>
</div>
</div>
<?php break; ?>
<?php endif; ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>
<?php endif; ?>
<!-- Featured Tv Shows -->
<?php if(isset($featured_seasons) && count($featured_seasons) > 0): ?>
<?php if(isset($sliderview)): ?>
<?php $__currentLoopData = $sliderview; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $s): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<?php if($s->id==10  && $s->sliderview==1): ?>
<div class="genre-main-block">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-3">
        <div class="genre-dtl-block">
          <h3 class="section-heading"><?php echo e($home_translations->where('key', 'featured')->first->value->value); ?> <?php echo e($home_translations->where('key', 'tv shows')->first->value->value); ?></h3>
          <p class="section-dtl"><?php echo e($home_translations->where('key', 'at the big screen at home')->first->value->value); ?></p>
        </div>
      </div>
      <div class="col-md-9">
        <div class="genre-main-slider owl-carousel">
          <?php $__currentLoopData = $featured_seasons; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
          <?php
          $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
            ['user_id', '=', $auth->id],
            ['season_id', '=', $item->id],
          ])->first();
          ?>
          <div class="genre-slide">
            <div class="genre-slide-image">
              <a href="<?php echo e(url('show/detail/'.$item->id)); ?>">
                <?php if($item->thumbnail != null): ?>
                <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$item->thumbnail)); ?>" class="img-responsive" alt="genre-image">
                <?php elseif($item->tvseries->thumbnail != null): ?>
                <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$item->tvseries->thumbnail)); ?>" class="img-responsive" alt="genre-image">
                <?php else: ?>
                <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
                <?php endif; ?>
              </a>
            </div>
            <div class="genre-slide-dtl">
              <h5 class="genre-dtl-heading"><a href="<?php echo e(url('show/detail/'.$item->id)); ?>"><?php echo e($item->tvseries->title); ?></a></h5>
            </div>
          </div>
          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
      </div>
    </div>
  </div>
</div>
<?php break; ?>
<?php elseif($s->id==10  && $s->sliderview==0): ?>
<div class="genre-main-block">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-3">
        <div class="genre-dtl-block">
          <h3 class="section-heading"><?php echo e($home_translations->where('key', 'featured')->first->value->value); ?> <?php echo e($home_translations->where('key', 'tv shows')->first->value->value); ?></h3>
          <p class="section-dtl"><?php echo e($home_translations->where('key', 'at the big screen at home')->first->value->value); ?></p>
        </div>
      </div>
      <div class="col-md-9">
        <div class="cus_img">
          <?php $__currentLoopData = $featured_seasons; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
          <?php
          $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
            ['user_id', '=', $auth->id],
            ['season_id', '=', $item->id],
          ])->first();
          ?>
          <div class="col-lg-3 col-md-9 col-xs-6 col-sm-6">
            <div class="genre-slide-image">
              <a href="<?php echo e(url('show/detail/'.$item->id)); ?>">
                <?php if($item->thumbnail != null): ?>
                <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$item->thumbnail)); ?>" class="img-responsive" alt="genre-image">
                <?php elseif($item->tvseries->thumbnail != null): ?>
                <img src="<?php echo e(asset('images/tvseries/thumbnails/'.$item->tvseries->thumbnail)); ?>" class="img-responsive" alt="genre-image">
                <?php else: ?>
                <img src="<?php echo e(asset('images/default-thumbnail.jpg')); ?>" class="img-responsive" alt="genre-image">
                <?php endif; ?>
              </a>
            </div>
            <div class="genre-slide-dtl">
              <h5 class="genre-dtl-heading"><a href="<?php echo e(url('show/detail/'.$item->id)); ?>"><?php echo e($item->tvseries->title); ?></a></h5>
            </div>
          </div>
          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
      </div>
    </div>
  </div>
</div>
<?php break; ?>
<?php endif; ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>
<?php endif; ?>
<?php endif; ?>
</div>
</section>






<?php $__env->stopSection(); ?>

<?php $__env->startSection('custom-script'); ?>

<script>
  $(document).ready(function(){

    $(".group1").colorbox({rel:'group1'});
    $(".group2").colorbox({rel:'group2', transition:"fade"});
    $(".group3").colorbox({rel:'group3', transition:"none", width:"75%", height:"75%"});
    $(".group4").colorbox({rel:'group4', slideshow:true});
    $(".ajax").colorbox();
    $(".youtube").colorbox({iframe:true, innerWidth:640, innerHeight:390});
    $(".vimeo").colorbox({iframe:true, innerWidth:500, innerHeight:409});
    $(".iframe").colorbox({iframe:true, width:"100%", height:"100%"});
    $(".inline").colorbox({inline:true, width:"50%"});
    $(".callbacks").colorbox({
      onOpen:function(){ alert('onOpen: colorbox is about to open'); },
      onLoad:function(){ alert('onLoad: colorbox has started to load the targeted content'); },
      onComplete:function(){ alert('onComplete: colorbox has displayed the loaded content'); },
      onCleanup:function(){ alert('onCleanup: colorbox has begun the close process'); },
      onClosed:function(){ alert('onClosed: colorbox has completely closed'); }
    });

    $('.non-retina').colorbox({rel:'group5', transition:'none'})
    $('.retina').colorbox({rel:'group5', transition:'none', retinaImage:true, retinaUrl:true});


    $("#click").click(function(){ 
      $('#click').css({"background-color":"#f00", "color":"#fff", "cursor":"inherit"}).text("Open this window again and this message will still be here.");
      return false;
    });
  });
</script>

<script>

  function playoniframe(url){
    $.colorbox({ href: url, width: '100%', height: '100%', iframe: true });
  }

</script>

<script>



  var app = new Vue({
    el: '.des-btn-block',
    data: {
      result: {
        id: '',
        type: '',
      },
    },
    methods: {
      addToWishList(id, type) {
        this.result.id = id;
        this.result.type = type;
        this.$http.post('<?php echo e(route('addtowishlist')); ?>', this.result).then((response) => {
        }).catch((e) => {
          console.log(e);
        });
        this.result.item_id = '';
        this.result.item_type = '';
      }
    }
  });

</script>



<script>

  function playoniframe(url){
    $.colorbox({ href: url, width: '100%', height: '100%', iframe: true });
  }

</script>

<script type="text/javascript">
  $(document).ready(function(){
    $('#myModal').on('show.bs.modal', function (e) {
      var text = $(e.relatedTarget).data('title');
      $('#imgid').attr("src",$(e.relatedTarget).data("src"));
    // $('#p').text(text);
  });
  });
</script>



<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.theme', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>