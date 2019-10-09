@extends('layouts.theme')
@section('title',"Your Watchlist")
@section('main-wrapper')
  <!-- main wrapper -->
  @php
  $auth=Auth::user();
  if(isset($auth) && $auth->is_admin){
  $nav=App\Menu::all();
}
  @endphp
  <section class="main-wrapper">
    <div class="container-fluid">
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
      <div class="watchlist-section">
        <h5 class="watchlist-heading">{{$header_translations->where('key', 'watchlist')->first->value->value}}</h5>
        <div class="watchlist-btn-block">
          <div class="btn-group">
              @if (isset($nav))
                 
                  @foreach ($nav as $menu)
                 
                    <a class="{{isset($menu) ? 'active' : ''}}" href="{{url('myaccount/userwatchlist', $menu->slug)}}" title="{{$menu->name}}">{{$menu->name}}</a>
                   @endforeach
              @endif
          </div>
        </div>
        @php
        $decide=App\Menu::where('slug',$slug)->get();
        foreach ($decide as $key => $menuid) {
          $menid=$menuid->id;
        }
        @endphp
        <div class="row">
      <div class="col-md-12">
         
          <div class="watchlist-main-block">
           
          
            @if(isset($allvideos)  && count($allvideos)>0)
             @if($menid==1)
              <h5>Dia lunes</h5>
              @elseif($menid==2)
               <h5> Introduccion</h5>
               @elseif($menid==3)
               <h5>Articulacion del tobillo</h5>
              @endif

              <br>
  <div class="genre-prime-slider owl-carousel">
               @foreach($allvideos as $key => $item)
              @if($item->type=='T')
             
              <div class=" genre-prime-slide">
                <div class="genre-slide-image protip" data-pt-placement="outside" data-pt-title="#prime-show-description-block{{$item->id}}">
                    @if(!is_null($item->video_link->iframeurl) || !is_null($item->video_link->ready_url))
                  <a href="{{url('show/detail',$item->id)}}">
                    @if($item->thumbnail != null)
                      <img src="{{asset('images/tvseries/thumbnails/'.$item->thumbnail)}}" class="img-responsive" alt="genre-image">
                    @elseif($item->tvseries['thumbnail'] != null)
                      <img src="{{asset('images/tvseries/thumbnails/'.$item->tvseries->thumbnail)}}" class="img-responsive" alt="genre-image">
                    @else
                      <img src="{{asset('images/default-thumbnail.jpg')}}" class="img-responsive" alt="genre-image">
                    @endif
                  </a>
                  @else
                   <a data-toggle="modal" href="#myModal" data-title="{{$item->title}}" data-src="{{asset('images/tvseries/thumbnails/'.$item->thumbnail)}}" data-id="{{ $item->id }}" class="btn btn-white imag" title="Zoom">
                    @if($item->thumbnail != null)
                      <img src="{{asset('images/tvseries/thumbnails/'.$item->thumbnail)}}" class="img-responsive" alt="genre-image">
                    @elseif($item->tvseries['thumbnail'] != null)
                      <img src="{{asset('images/tvseries/thumbnails/'.$item->tvseries->thumbnail)}}" class="img-responsive" alt="genre-image">
                    @else
                      <img src="{{asset('images/default-thumbnail.jpg')}}" class="img-responsive" alt="genre-image">
                    @endif
                  </a>
                  @endif
                </div>
                
               
              </div>
          
             
               @elseif($item->type=="M")
             
              <div class=" genre-prime-slide">
                <div class="genre-slide-image protip" data-pt-placement="outside" data-pt-title="#prime-description-block{{$item->id}}">
                    @if(!is_null($item->video_link->iframeurl) || !is_null($item->video_link->ready_url))
                  <a href="{{url('movie/detail',$item->id)}}">
                    @if($item->thumbnail != null || $item->thumbnail != '')
                      <img src="{{asset('images/movies/thumbnails/'.$item->thumbnail)}}" class="img-responsive" alt="genre-image">
                    @else
                      <img src="{{asset('images/default-thumbnail.jpg')}}" class="img-responsive" alt="genre-image">
                    @endif
                  </a>
                  @else
                   <a data-toggle="modal" href="#myModal" data-title="{{$item->title}}" data-src="{{asset('images/movies/thumbnails/'.$item->thumbnail)}}" data-id="{{ $item->id }}" class="btn btn-white imag" title="Zoom">
                    @if($item->thumbnail != null || $item->thumbnail != '')
                      <img src="{{asset('images/movies/thumbnails/'.$item->thumbnail)}}" class="img-responsive" alt="genre-image">
                    @else
                      <img src="{{asset('images/default-thumbnail.jpg')}}" class="img-responsive" alt="genre-image">
                    @endif
                  </a>
                  @endif
                </div>
              
               
              </div>
           
 
         @endif
            @endforeach
          </div>
           
            @endif
           
        </div>
        <div class="col-md-12">
         
          
           
            @if(isset($allvideos2) && count($allvideos2)>0)
            @if($menid==1)
              <h5>Dia martes</h5>
              @elseif($menid==2)
               <h5> Desayuno</h5>
               @elseif($menid==3)
               <h5>Articulacion de la rodilla </h5>
              @endif
              <br>
 <div class="genre-prime-slider owl-carousel">
               @foreach($allvideos2 as $key => $item)
              @if($item->type=='T')
               <div class=" genre-prime-slide">
                <div class="genre-slide-image protip" data-pt-placement="outside" data-pt-title="#prime-show-description-block{{$item->id}}">
                  @if(!is_null($item->video_link->iframeurl) || !is_null($item->video_link->ready_url))
                  <a href="{{url('show/detail',$item->id)}}">
                    @if($item->thumbnail != null)
                      <img src="{{asset('images/tvseries/thumbnails/'.$item->thumbnail)}}" class="img-responsive" alt="genre-image">
                    @elseif($item->tvseries['thumbnail'] != null)
                      <img src="{{asset('images/tvseries/thumbnails/'.$item->tvseries->thumbnail)}}" class="img-responsive" alt="genre-image">
                    @else
                      <img src="{{asset('images/default-thumbnail.jpg')}}" class="img-responsive" alt="genre-image">
                    @endif
                  </a>
                  @else
                   <a data-toggle="modal" href="#myModal" data-title="{{$item->title}}" data-src="{{asset('images/tvseries/thumbnails/'.$item->thumbnail)}}" data-id="{{ $item->id }}" class="btn btn-white imag" title="Zoom">
                    @if($item->thumbnail != null)
                      <img src="{{asset('images/tvseries/thumbnails/'.$item->thumbnail)}}" class="img-responsive" alt="genre-image">
                    @elseif($item->tvseries['thumbnail'] != null)
                      <img src="{{asset('images/tvseries/thumbnails/'.$item->tvseries->thumbnail)}}" class="img-responsive" alt="genre-image">
                    @else
                      <img src="{{asset('images/default-thumbnail.jpg')}}" class="img-responsive" alt="genre-image">
                    @endif
                  </a>
                  @endif
                </div>
                
               
              </div>
           
               @elseif($item->type=="M")
              
                <div class=" genre-prime-slide">
                <div class="genre-slide-image protip" data-pt-placement="outside" data-pt-title="#prime-description-block{{$item->id}}">
                   @if(!is_null($item->video_link->iframeurl) || !is_null($item->video_link->ready_url))
                  <a href="{{url('movie/detail',$item->id)}}">
                    @if($item->thumbnail != null || $item->thumbnail != '')
                      <img src="{{asset('images/movies/thumbnails/'.$item->thumbnail)}}" class="img-responsive" alt="genre-image">
                    @else
                      <img src="{{asset('images/default-thumbnail.jpg')}}" class="img-responsive" alt="genre-image">
                    @endif
                  </a>
                  @else
                   <a data-toggle="modal" href="#myModal" data-title="{{$item->title}}" data-src="{{asset('images/movies/thumbnails/'.$item->thumbnail)}}" data-id="{{ $item->id }}" class="btn btn-white imag" title="Zoom">
                    @if($item->thumbnail != null || $item->thumbnail != '')
                      <img src="{{asset('images/movies/thumbnails/'.$item->thumbnail)}}" class="img-responsive" alt="genre-image">
                    @else
                      <img src="{{asset('images/default-thumbnail.jpg')}}" class="img-responsive" alt="genre-image">
                    @endif
                  </a>
                  @endif
                </div>
              
                
              </div>
        
         @endif
            @endforeach
          </div>
          
            @endif
 
          </div>
           <div class="col-md-12">
         
          
          
            @if(isset($allvideos3) && count($allvideos3)>0)
             @if($menid==1)
              <h5>Dia miercoles</h5>
              @elseif($menid==2)
               <h5>Colacion AM</h5>
               @elseif($menid==3)
               <h5>Articulacion de la cadera </h5>
              @endif
              <br>
 <div class="genre-prime-slider owl-carousel">
               @foreach($allvideos3 as $key => $item)
              @if($item->type=='T')
               <div class=" genre-prime-slide">
                <div class="genre-slide-image protip" data-pt-placement="outside" data-pt-title="#prime-show-description-block{{$item->id}}">
                  @if(!is_null($item->video_link->iframeurl) || !is_null($item->video_link->ready_url))
                  <a href="{{url('show/detail',$item->id)}}">
                    @if($item->thumbnail != null)
                      <img src="{{asset('images/tvseries/thumbnails/'.$item->thumbnail)}}" class="img-responsive" alt="genre-image">
                    @elseif($item->tvseries['thumbnail'] != null)
                      <img src="{{asset('images/tvseries/thumbnails/'.$item->tvseries->thumbnail)}}" class="img-responsive" alt="genre-image">
                    @else
                      <img src="{{asset('images/default-thumbnail.jpg')}}" class="img-responsive" alt="genre-image">
                    @endif
                  </a>
                  @else
                   <a data-toggle="modal" href="#myModal" data-title="{{$item->title}}" data-src="{{asset('images/tvseries/thumbnails/'.$item->thumbnail)}}" data-id="{{ $item->id }}" class="btn btn-white imag" title="Zoom">
                    @if($item->thumbnail != null)
                      <img src="{{asset('images/tvseries/thumbnails/'.$item->thumbnail)}}" class="img-responsive" alt="genre-image">
                    @elseif($item->tvseries['thumbnail'] != null)
                      <img src="{{asset('images/tvseries/thumbnails/'.$item->tvseries->thumbnail)}}" class="img-responsive" alt="genre-image">
                    @else
                      <img src="{{asset('images/default-thumbnail.jpg')}}" class="img-responsive" alt="genre-image">
                    @endif
                  </a>
                  @endif
                </div>
                
               
              </div>
             
               @elseif($item->type=="M")
              
              <div class=" genre-prime-slide">
                <div class="genre-slide-image protip" data-pt-placement="outside" data-pt-title="#prime-description-block{{$item->id}}">
                   @if(!is_null($item->video_link->iframeurl) || !is_null($item->video_link->ready_url))
                  <a href="{{url('movie/detail',$item->id)}}">
                    @if($item->thumbnail != null || $item->thumbnail != '')
                      <img src="{{asset('images/movies/thumbnails/'.$item->thumbnail)}}" class="img-responsive" alt="genre-image">
                    @else
                      <img src="{{asset('images/default-thumbnail.jpg')}}" class="img-responsive" alt="genre-image">
                    @endif
                  </a>
                  @else
                   <a data-toggle="modal" href="#myModal" data-title="{{$item->title}}" data-src="{{asset('images/movies/thumbnails/'.$item->thumbnail)}}" data-id="{{ $item->id }}" class="btn btn-white imag" title="Zoom">
                    @if($item->thumbnail != null || $item->thumbnail != '')
                      <img src="{{asset('images/movies/thumbnails/'.$item->thumbnail)}}" class="img-responsive" alt="genre-image">
                    @else
                      <img src="{{asset('images/default-thumbnail.jpg')}}" class="img-responsive" alt="genre-image">
                    @endif
                  </a>
                  @endif
                </div>
              
                
              </div>
      
         @endif
            @endforeach
          </div>
          
            @endif
 
          </div>


 <div class="col-md-12">
         
          
           
            @if(isset($allvideos4) && count($allvideos4)>0)
             @if($menid==1)
              <h5>Dia jueves</h5>
              @elseif($menid==2)
               <h5>Almuerzo</h5>
               @elseif($menid==3)
               <h5>Articulacion de la columna </h5>
              @endif
              <br>
 <div class="genre-prime-slider owl-carousel">
               @foreach($allvideos4 as $key => $item)
              @if($item->type=='T')
                <div class=" genre-prime-slide">
                <div class="genre-slide-image protip" data-pt-placement="outside" data-pt-title="#prime-show-description-block{{$item->id}}">
                  @if(!is_null($item->video_link->iframeurl) || !is_null($item->video_link->ready_url))
                  <a href="{{url('show/detail',$item->id)}}">
                    @if($item->thumbnail != null)
                      <img src="{{asset('images/tvseries/thumbnails/'.$item->thumbnail)}}" class="img-responsive" alt="genre-image">
                    @elseif($item->tvseries['thumbnail'] != null)
                      <img src="{{asset('images/tvseries/thumbnails/'.$item->tvseries->thumbnail)}}" class="img-responsive" alt="genre-image">
                    @else
                      <img src="{{asset('images/default-thumbnail.jpg')}}" class="img-responsive" alt="genre-image">
                    @endif
                  </a>
                  @else
                   <a data-toggle="modal" href="#myModal" data-title="{{$item->title}}" data-src="{{asset('images/tvseries/thumbnails/'.$item->thumbnail)}}" data-id="{{ $item->id }}" class="btn btn-white imag" title="Zoom">
                    @if($item->thumbnail != null)
                      <img src="{{asset('images/tvseries/thumbnails/'.$item->thumbnail)}}" class="img-responsive" alt="genre-image">
                    @elseif($item->tvseries['thumbnail'] != null)
                      <img src="{{asset('images/tvseries/thumbnails/'.$item->tvseries->thumbnail)}}" class="img-responsive" alt="genre-image">
                    @else
                      <img src="{{asset('images/default-thumbnail.jpg')}}" class="img-responsive" alt="genre-image">
                    @endif
                  </a>
                  @endif
                </div>
                
               
              </div>
            
               @elseif($item->type=="M")
              
               <div class=" genre-prime-slide">
                <div class="genre-slide-image protip" data-pt-placement="outside" data-pt-title="#prime-description-block{{$item->id}}">
                  @if(!is_null($item->video_link->iframeurl) || !is_null($item->video_link->ready_url))
                  <a href="{{url('movie/detail',$item->id)}}">
                    @if($item->thumbnail != null || $item->thumbnail != '')
                      <img src="{{asset('images/movies/thumbnails/'.$item->thumbnail)}}" class="img-responsive" alt="genre-image">
                    @else
                      <img src="{{asset('images/default-thumbnail.jpg')}}" class="img-responsive" alt="genre-image">
                    @endif
                  </a>
                  @else
                   <a data-toggle="modal" href="#myModal" data-title="{{$item->title}}" data-src="{{asset('images/movies/thumbnails/'.$item->thumbnail)}}" data-id="{{ $item->id }}" class="btn btn-white imag" title="Zoom">
                    @if($item->thumbnail != null || $item->thumbnail != '')
                      <img src="{{asset('images/movies/thumbnails/'.$item->thumbnail)}}" class="img-responsive" alt="genre-image">
                    @else
                      <img src="{{asset('images/default-thumbnail.jpg')}}" class="img-responsive" alt="genre-image">
                    @endif
                  </a>
                  @endif
                </div>
              
              
              </div>
        
         @endif
            @endforeach
          </div>
        
            @endif
 
          </div>
           <div class="col-md-12">
         
          
            
            @if(isset($allvideos5) && count($allvideos5)>0)
            @if($menid==1)
              <h5>Dia viernes </h5>
              @elseif($menid==2)
               <h5>Colacion PM</h5>
               @elseif($menid==3)
               <h5>Articulacion del hombro </h5>
              @endif
              <br>
 <div class="genre-prime-slider owl-carousel">
               @foreach($allvideos5 as $key => $item)
              @if($item->type=='T')
               <div class=" genre-prime-slide">
                <div class="genre-slide-image protip" data-pt-placement="outside" data-pt-title="#prime-show-description-block{{$item->id}}">
                  @if(!is_null($item->video_link->iframeurl) || !is_null($item->video_link->ready_url))
                  <a href="{{url('show/detail',$item->id)}}">
                    @if($item->thumbnail != null)
                      <img src="{{asset('images/tvseries/thumbnails/'.$item->thumbnail)}}" class="img-responsive" alt="genre-image">
                    @elseif($item->tvseries['thumbnail'] != null)
                      <img src="{{asset('images/tvseries/thumbnails/'.$item->tvseries->thumbnail)}}" class="img-responsive" alt="genre-image">
                    @else
                      <img src="{{asset('images/default-thumbnail.jpg')}}" class="img-responsive" alt="genre-image">
                    @endif
                  </a>
                  @else
                   <a data-toggle="modal" href="#myModal" data-title="{{$item->title}}" data-src="{{asset('images/tvseries/thumbnails/'.$item->thumbnail)}}" data-id="{{ $item->id }}" class="btn btn-white imag" title="Zoom">
                    @if($item->thumbnail != null)
                      <img src="{{asset('images/tvseries/thumbnails/'.$item->thumbnail)}}" class="img-responsive" alt="genre-image">
                    @elseif($item->tvseries['thumbnail'] != null)
                      <img src="{{asset('images/tvseries/thumbnails/'.$item->tvseries->thumbnail)}}" class="img-responsive" alt="genre-image">
                    @else
                      <img src="{{asset('images/default-thumbnail.jpg')}}" class="img-responsive" alt="genre-image">
                    @endif
                  </a>
                  @endif
                </div>
                
               
              </div>
           
               @elseif($item->type=="M")
              
               <div class=" genre-prime-slide">
                <div class="genre-slide-image protip" data-pt-placement="outside" data-pt-title="#prime-description-block{{$item->id}}">
                    @if(!is_null($item->video_link->iframeurl) || !is_null($item->video_link->ready_url))
                  <a href="{{url('movie/detail',$item->id)}}">
                    @if($item->thumbnail != null || $item->thumbnail != '')
                      <img src="{{asset('images/movies/thumbnails/'.$item->thumbnail)}}" class="img-responsive" alt="genre-image">
                    @else
                      <img src="{{asset('images/default-thumbnail.jpg')}}" class="img-responsive" alt="genre-image">
                    @endif
                  </a>
                  @else
                   <a data-toggle="modal" href="#myModal" data-title="{{$item->title}}" data-src="{{asset('images/movies/thumbnails/'.$item->thumbnail)}}" data-id="{{ $item->id }}" class="btn btn-white imag" title="Zoom">
                    @if($item->thumbnail != null || $item->thumbnail != '')
                      <img src="{{asset('images/movies/thumbnails/'.$item->thumbnail)}}" class="img-responsive" alt="genre-image">
                    @else
                      <img src="{{asset('images/default-thumbnail.jpg')}}" class="img-responsive" alt="genre-image">
                    @endif
                  </a>
                  @endif
                </div>
              
               
              </div>
        
         @endif
            @endforeach
          </div>
          
            @endif
 
          </div>
 <div class="col-md-12">
         
          
          
            @if(isset($allvideos6) && count($allvideos6)>0)
               @if($menid==1)
              <h5>Dia sabado </h5>
              @elseif($menid==2)
               <h5>Cena</h5>
               @elseif($menid==3)
               <h5>Articulacion del codo y muñeca</h5>
              @endif
              <br>
 <div class="genre-prime-slider owl-carousel">
               @foreach($allvideos6 as $key => $item)
              @if($item->type=='T')
              <div class=" genre-prime-slide">
                <div class="genre-slide-image protip" data-pt-placement="outside" data-pt-title="#prime-show-description-block{{$item->id}}">
                  @if(!is_null($item->video_link->iframeurl) || !is_null($item->video_link->ready_url))
                  <a href="{{url('show/detail',$item->id)}}">
                    @if($item->thumbnail != null)
                      <img src="{{asset('images/tvseries/thumbnails/'.$item->thumbnail)}}" class="img-responsive" alt="genre-image">
                    @elseif($item->tvseries['thumbnail'] != null)
                      <img src="{{asset('images/tvseries/thumbnails/'.$item->tvseries->thumbnail)}}" class="img-responsive" alt="genre-image">
                    @else
                      <img src="{{asset('images/default-thumbnail.jpg')}}" class="img-responsive" alt="genre-image">
                    @endif
                  </a>
                  @else
                   <a data-toggle="modal" href="#myModal" data-title="{{$item->title}}" data-src="{{asset('images/tvseries/thumbnails/'.$item->thumbnail)}}" data-id="{{ $item->id }}" class="btn btn-white imag" title="Zoom">
                    @if($item->thumbnail != null)
                      <img src="{{asset('images/tvseries/thumbnails/'.$item->thumbnail)}}" class="img-responsive" alt="genre-image">
                    @elseif($item->tvseries['thumbnail'] != null)
                      <img src="{{asset('images/tvseries/thumbnails/'.$item->tvseries->thumbnail)}}" class="img-responsive" alt="genre-image">
                    @else
                      <img src="{{asset('images/default-thumbnail.jpg')}}" class="img-responsive" alt="genre-image">
                    @endif
                  </a>
                  @endif
                </div>
                
               
            
             </div>
               @elseif($item->type=="M")
              
              <div class=" genre-prime-slide">
                <div class="genre-slide-image protip" data-pt-placement="outside" data-pt-title="#prime-description-block{{$item->id}}">
                   @if(!is_null($item->video_link->iframeurl) || !is_null($item->video_link->ready_url))
                  <a href="{{url('movie/detail',$item->id)}}">
                    @if($item->thumbnail != null || $item->thumbnail != '')
                      <img src="{{asset('images/movies/thumbnails/'.$item->thumbnail)}}" class="img-responsive" alt="genre-image">
                    @else
                      <img src="{{asset('images/default-thumbnail.jpg')}}" class="img-responsive" alt="genre-image">
                    @endif
                  </a>
                  @else
                   <a data-toggle="modal" href="#myModal" data-title="{{$item->title}}" data-src="{{asset('images/movies/thumbnails/'.$item->thumbnail)}}" data-id="{{ $item->id }}" class="btn btn-white imag" title="Zoom">
                    @if($item->thumbnail != null || $item->thumbnail != '')
                      <img src="{{asset('images/movies/thumbnails/'.$item->thumbnail)}}" class="img-responsive" alt="genre-image">
                    @else
                      <img src="{{asset('images/default-thumbnail.jpg')}}" class="img-responsive" alt="genre-image">
                    @endif
                  </a>
                  @endif
                </div>
              
               
              </div>
         
         @endif
            @endforeach
          </div>
            
            @endif
 
          </div>

        </div>
        </div>
      </div>
      
    </div>
  </section>


  <!--End-->
 
@endsection

@section('custom-script')


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
  <script type="text/javascript">
  $(document).ready(function(){
    $('#myModal').on('show.bs.modal', function (e) {
      var text = $(e.relatedTarget).data('title');
      $('#imgid').attr("src",$(e.relatedTarget).data("src"));
    // $('#p').text(text);
  });
  });
</script>
@endsection
