@extends('layouts.theme')
@section('title',"Search result for $searchKey")
@section('main-wrapper')
  <!-- main wrapper -->
  <section class="main-wrapper main-wrapper-single-movie-prime">
    @if(isset($filter_video))
      @if(count($filter_video) > 0)
        <div class="container-fluid movie-series-section search-section">
          <h5 class="movie-series-heading">{{count($filter_video)}} {{$home_translations->where('key', 'found for')->first->value->value}} "{{$searchKey}}"</h5>
          <div>
            @foreach($filter_video as $key => $item)

              @php
                // if($item->type == 'S'){
                 
                 
                //       $x = count($item->tvseries);
                
                // }else{
                //   $x = 0;
                // }
                 
              // $key = $key;
                if ($item->type == 'M')
                {
                  $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
                                                                            ['user_id', '=', $auth->id],
                                                                            ['movie_id', '=', $item->id],
                                                                           ])->first();
                } else {
                  $wishlist_check = \Illuminate\Support\Facades\DB::table('wishlists')->where([
                                                                            ['user_id', '=', $auth->id],
                                                                            ['season_id', '=', $item->id],
                                                                           ])->first();
                }
              @endphp

             {{-- {{$x}} --}}
              <div class="movie-series-block">
                <div class="row">
                  <div class="col-sm-3">

                    <div class="movie-series-img">
                      @if($item->type == 'M' && $item->thumbnail != null)
                        <img src="{{asset('images/movies/thumbnails/'.$item->thumbnail)}}" class="img-responsive" alt="genre-image">
                      @elseif($item->type == 'M' && $item->thumbnail == null)
                        <img src="{{asset('images/default-thumbnail.jpg')}}" class="img-responsive" alt="genre-image">
                      @elseif($item->type == 'S')
                        @if($item->thumbnail != null)
                          <img src="{{asset('images/tvseries/thumbnails/'.$item->thumbnail)}}" class="img-responsive" alt="genre-image">
                        @elseif($item->tvseries->thumbnail != null)
                          <img src="{{asset('images/tvseries/thumbnails/'.$item->tvseries->thumbnail)}}" class="img-responsive" alt="genre-image">
                        @else
                          <img src="{{asset('images/default-thumbnail.jpg')}}" class="img-responsive" alt="genre-image">
                        @endif
                      @endif
                    </div>
                  </div>
                  <div class="col-sm-7 pad-0">
                    <h5 class="movie-series-heading movie-series-name">
                      @if($item->type == 'M')
                        <a href="{{url('movie/detail', $item->id)}}">{{$item->title}}</a>
                      @elseif($item->type == 'S')
                        <a href="{{url('show/detail', $item->id)}}">{{$item->tvseries->title}}</a>
                      @endif
                    </h5>
                    <ul class="movie-series-des-list">
                     
                      <li>
                        @if($item->type == 'M')
                          {{$item->duration}} {{$popover_translations->where('key', 'mins')->first->value->value}}
                        @else
                         {{$popover_translations->where('key', 'season')->first->value->value}} {{$item->season_no}}
                        @endif
                      </li>
                      @if($item->type == 'M')
                        <li>{{$item->released}}</li>
                      @else
                        <li>{{$item->publish_year}}</li>
                      @endif
                      <li>
                        @if($item->type == 'M')
                          {{$item->maturity_rating}}
                        @else
                          {{$item->tvseries->maturity_rating}}
                        @endif
                      </li>
                      @if($item->subtitle == 1)
                        <li>
                          {{$popover_translations->where('key', 'subtitles')->first->value->value}}
                        </li>
                      @endif
                    </ul>
                    <p>
                      @if($item->type == 'M')
                        {{str_limit($item->detail, 360)}}
                      @else
                        @if ($item->detail != null || $item->detail != '')
                          {{$item->detail}}
                        @else
                          {{str_limit($item->tvseries->detail, 360)}}
                        @endif
                      @endif
                    </p>
                    <div class="des-btn-block des-in-list">
                      @if($item->type == 'M')
                       @if($item->video_link->iframeurl != null)
                          
                              <a onclick="playoniframe('{{ $item->video_link->iframeurl }}')" class="btn btn-play"><span class="play-btn-icon"><i class="fa fa-play"></i></span> <span class="play-text">{{$popover_translations->where('key', 'play')->first->value->value}}</span>
                              </a>

                             @else 

                             <a href="{{route('watchmovie', $item->id)}}" class="iframe btn btn-play"><span class="play-btn-icon"><i class="fa fa-play"></i></span> <span class="play-text">{{$popover_translations->where('key', 'play')->first->value->value}}</span>
                             </a>

                        @endif
                        @if($item->trailer_url != null || $item->trailer_url != '')
                          
                          <a href="{{ route('watchTrailer',$item->id) }}" class="iframe btn btn-default">Watch Trailer</a>
                        @endif
                        <div id="wishlistelement">
                          @if (isset($wishlist_check->added))
                            <a onclick="addWish({{$item->id}},'{{$item->type}}')" class="addwishlistbtn{{$item->id}}{{$item->type}} btn-default">{{$wishlist_check->added == 1 ? ($popover_translations->where('key', 'remove from watchlist')->first->value->value) : ($popover_translations->where('key', 'add to watchlist')->first->value->value)}}</a>
                          @else
                            <a onclick="addWish({{$item->id}},'{{$item->type}}')" class="addwishlistbtn{{$item->id}}{{$item->type}} btn-default">{{$popover_translations->where('key', 'add to watchlist')->first->value->value}}</a>
                          @endif
                        </div>

                      @else
                        @if(isset($item->episodes[0]))
                           @if($item->episodes[0]->video_link->iframeurl !="")

                            <a href="#" onclick="playoniframe('{{ $item->episodes[0]->video_link->iframeurl }}')" class="btn btn-play"><span class="play-btn-icon"><i class="fa fa-play"></i></span> <span class="play-text">{{$popover_translations->where('key', 'play')->first->value->value}}</span>
                             </a>

                             @else 
                            <a href="{{route('watchTvShow', $item->id)}}" class="iframe btn btn-play"><span class="play-btn-icon"><i class="fa fa-play"></i></span> <span class="play-text">{{$popover_translations->where('key', 'play')->first->value->value}}</span></a>
                            @endif
                          @endif
                        @if (isset($wishlist_check->added))
                          <a onclick="addWish({{$item->id}},'{{$item->type}}')" class="addwishlistbtn{{$item->id}}{{$item->type}} btn-default">{{$wishlist_check->added == 1 ? ($popover_translations->where('key', 'remove from watchlist')->first->value->value) : ($popover_translations->where('key', 'add to watchlist')->first->value->value)}}</a>
                        @else
                  <a onclick="addWish({{$item->id}},'{{$item->type}}')" class="addwishlistbtn{{$item->id}}{{$item->type}} btn-default">{{$popover_translations->where('key', 'add to watchlist')->first->value->value}}</a>
                        @endif
                      @endif
                    </div>
                  </div>
                </div>
              </div>
            @endforeach
          </div>
        </div>
      @else
        <div class="container-fluid movie-series-section search-section">
          <h5 class="movie-series-heading">0 {{$home_translations->where('key', 'found for')->first->value->value}} "{{$searchKey}}"</h5>
        </div>
      @endif
    @endif
  </section>
  <!-- end main wrapper -->
 



@endsection
@section('custom-script')
  <script>
  var app = new Vue({
    el: '#wishlistelement',
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
        this.$http.post('{{route('addtowishlist')}}', this.result).then((response) => {
        }).catch((e) => {
          console.log(e);
        });
        this.result.item_id = '';
        this.result.item_type = '';
      }
    }
  });

    

    
    function playTrailer(url) {
      $('.video-player').css({
        "visibility" : "visible",
        "z-index" : "99999",
      });
      $('body').css({
        "overflow": "hidden"
      });
      $('#my_video').show();
      $('.vjs-control-bar').removeClass('hide-visible');
      let str = url;
      let youtube_slice_1 = str.slice(0, 14);
      let youtube_slice_2 = str.slice(0, 20);
      if (youtube_slice_1 == "https://youtu." || youtube_slice_2 == "https://www.youtube.")
      {
        $('.vjs-control-bar').addClass('hide-visible');
        player.src({ type: "video/youtube", src: url});
      } else {
        player.src({ type: "video/mp4", src: url});
      }

      setTimeout(function(){
        player.play();
      }, 300);
    }

    

    function addWish(id, type) {
      app.addToWishList(id, type);
      setTimeout(function() {
        $('.addwishlistbtn'+id+type).text(function(i, text){
          return text == "{{$popover_translations->where('key', 'add to watchlist')->first->value->value}}" ? "{{$popover_translations->where('key', 'remove from watchlist')->first->value->value}}" : "{{$popover_translations->where('key', 'add to watchlist')->first->value->value}}";
        });
      }, 100);
    }

</script>

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

@endsection