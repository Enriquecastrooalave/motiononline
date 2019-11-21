<?php

namespace App\Http\Controllers;

use App\Movie;
use App\TvSeries;
use App\User;
use Illuminate\Support\Facades\Validator;
use App\WishlistVideoGroup;
use App\WishlistAdmin;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class WishListUserVideoController extends Controller
{
  public function index()
  { 
    $videogroup = WishlistVideoGroup::all();
    return view('admin.wishlist.videogroup.index', compact('videogroup'));
  }
  public function create()
  {
    $movie = Movie::all();
    $tvseries=TvSeries::all();
    $group = WishlistVideoGroup::all();

    return view('admin.wishlist.videogroup.create', compact('movie', 'group','tvseries'));
  }

  public function update(Request $request, $id)
  {
    $users = WishlistVideoGroup::findOrFail($id);
    
    $input = $request->all();
    $group=WishlistVideoGroup::all();
    if ($input['title']!=$users->title) {
      foreach ($group as $key => $value) {
        if ($input['title']==$value->title) {
          return back()->with('deleted', 'Group Already Exist');
        }
      }
    }
    
    $users->update($input);
    return redirect('admin/wishlist/videogroup')->with('updated', 'Group has been updated');
  }

  
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
      $movie = Movie::all();
      $tvseries = TvSeries::all();

      $group = WishlistVideoGroup::findOrFail($id);
      
      
        // get old Movie list
      $old_movie = collect();
      if ($group->movie_id) {
          # code...
        
       foreach ($group->movie_id as $key => $value) {
         
        $old3 = Movie::find(trim($value));
        if (isset($old3)) {
          $old_movie->push($old3);
        }
        
        
        
      }
    }
    if (isset($old_movie)) {
     $movie = $movie->filter(function($value, $key) {
      return  $value != null;
    });
     $movie=  $movie->diff($old_movie);

   }
   

   
           // get old Tv Series list
   $old_tv = collect();
   if (isset($group->tv_id)) {
     foreach ($group->tv_id as $key => $value) {
       
      $old4 = TvSeries::find(trim($value));
      if (isset($old4)) {
        $old_tv->push($old4);
      }
      
      
      
    }
  }
  if (isset($old_tv)) {
   $tvseries = $tvseries->filter(function($value, $key) {
    return  $value != null;
  });
   $tvseries=  $tvseries->diff($old_tv);

 }    

 return view('admin.wishlist.videogroup.edit', compact('movie','tvseries', 'group','old_movie','old_tv'));
}
public function store(Request $request)
{
 
  $request->validate([
    'title' => 'required'
  ]);
  $input = $request->all();
  $group=WishlistVideoGroup::all();
  foreach ($group as $key => $value) {
    if ($input['title']==$value->title) {
     return back()->with('deleted', 'Group Already Exist');
   }
 }
 
 $add=new WishlistVideoGroup();
 $add->title=$request->title;
 $add->movie_id=$request->movie_id;
 $add->tv_id=$request->tv_id;

 $add->save();
 

 return back()->with('added', 'Group Has Been Created');
}

public function bulk_delete(Request $request)
{

  $validator = Validator::make($request->all(), [
    'checked' => 'required',
  ]);

  if ($validator->fails()) {

    return back()->with('deleted', 'Please check one of them to delete');
  }

  foreach ($request->checked as $checked) {
    
    $group = WishlistVideoGroup::findOrFail($checked);
    $group->delete();
    $id=$checked;
    
    $adminwish=WishlistAdmin::all();
    foreach ($adminwish as $key => $value) {
      $newgroup=$value->video_group_id;
      if (($key1 = array_search($id, $newgroup)) !== false) {
       if (isset($key1) && !is_null($key1)) {
         unset($newgroup[$key1]);
         $ww= WishlistAdmin::findOrFail($value->id);
         if (count($newgroup)>0 && !is_null($newgroup)) {
          foreach ($newgroup as $keys => $values) {
           $newgoup[]=$values;
         }
         if ($ww->video_group_id!=$newgoup) {
          $newgoup=array_unique($newgoup);
          $ww->update(['video_group_id' =>  $newgoup]);
          
        }
        
      }else{
        $ww->delete();
        
      }
    }
    
    
  }

  
}

}

return back()->with('deleted', 'Group has been deleted');
}

public function destroy($id)
{
  $group = WishlistVideoGroup::findOrFail($id);
  $group->delete();
  
  $adminwish=WishlistAdmin::all();
  foreach ($adminwish as $key => $value) {
    $newgroup=$value->video_group_id;
    if (($key1 = array_search($id, $newgroup)) !== false) {
     if (isset($key1) && !is_null($key1)) {
       unset($newgroup[$key1]);
       $ww= WishlistAdmin::findOrFail($value->id);
       if (count($newgroup)>0 && !is_null($newgroup)) {
        foreach ($newgroup as $keys => $values) {
         $newgoup[]=$values;
       }
       if ($ww->video_group_id!=$newgoup) {
        $newgoup=array_unique($newgoup);
        $ww->update(['video_group_id' =>  $newgoup]);
        
      }
      
    }else{
      $ww->delete();
      
    }
  }
  
  
}


}
return back()->with('deleted', 'Group has been deleted');
}
public function moviedestroy($groupid, $id)
{
  $moviegroup =  WishlistVideoGroup::findOrFail($groupid); 

  foreach ($moviegroup->movie_id as $key => $value) {
   $up=$moviegroup->movie_id;

   if ($value==$id) {
    
    if (($keys = array_search($id, $up)) !== false) {

      unset($up[$keys]);
    // return $up;
      foreach ($up as $key1 => $values) {
       $movieupdate[]= $values;
       
     }
     $moviegroup->movie_id=$movieupdate;
     $moviegroup->save();
   }
   
 }
}

return back()->with('deleted', 'Movie has been deleted');
}
public function tvdestroy($groupid, $id)
{
  $tvgroup =  WishlistVideoGroup::findOrFail($groupid); 

  foreach ($tvgroup->tv_id as $key => $value) {
   $up=$tvgroup->tv_id;

   if ($value==$id) {
    
    if (($keys = array_search($id, $up)) !== false) {

      unset($up[$keys]);
    // return $up;
      foreach ($up as $key1 => $values) {
       $tvupdate[]= $values;
       
     }
     $tvgroup->tv_id=$tvupdate;
     $tvgroup->save();
     
   }

   
 }
}

return back()->with('deleted', 'Tv Series has been deleted');
}  
public function showmovie($id) {
  $usergroup =  WishlistVideoGroup::findOrFail($id); 

  $movie = Movie::whereIn('id',$usergroup->movie_id)->get();

  
  return view('admin.wishlist.videogroup.movie', compact('movie','id'));

}
public function showtv($id) {
  $usergroup =  WishlistVideoGroup::findOrFail($id); 

  $tvseries = TvSeries::whereIn('id',$usergroup->tv_id)->get();

  
  return view('admin.wishlist.videogroup.tvseries', compact('id','tvseries'));

}
}

