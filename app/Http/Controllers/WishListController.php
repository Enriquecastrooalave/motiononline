<?php
namespace App\Http\Controllers;

use App\Movie;
use App\Menu;
use App\MenuVideo;
use App\Package;
use App\WishlistAdmin;
use App\WishlistUserGroup;
use App\WishlistVideoGroup;

use App\PaypalSubscription;

use App\TvSeries;
use App\Season;
use App\Wishlist;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class WishListController extends Controller
{

    public function showWishListTvShows()
    {
        $auth = Auth::user();
        $all_shows = collect();
        $type_check = "S";
        $all_seasons = DB::table('wishlists')->where([['user_id', '=', $auth->id], ['season_id', '!=', ''], ['added', '=', 1]])
            ->get();

        foreach ($all_seasons as $season)
        {
            $item = Season::find($season->season_id);
            if (isset($item))
            {
                $all_shows->push($item);
            }
        }
        return view('watchlist', compact('type_check', 'all_shows'));
    }

    public function showWishListMovies()
    {
        $auth = Auth::user();
        $all_movies = collect();
        $type_check = "S";
        $movies = DB::table('wishlists')->where([['user_id', '=', $auth->id], ['movie_id', '!=', ''], ['added', '=', 1]])
            ->get();

        foreach ($movies as $movie)
        {
            $item2 = Movie::find($movie->movie_id);
            if (isset($item2))
            {
                $all_movies->push($item2);
            }
        }

        return view('watchlist', compact('type_check', 'all_movies'));
    }
    public function showWishLists($slug)
    {

        // $nav_menus = Menu::all();
        $auth = Auth::user();
        $type = "";
        $movies = collect();
        //   return 'ttt';
        $packageid = PaypalSubscription::select('package_id')->where('user_id', $auth->id)
            ->get();
        if (isset($packageid))
        {
            foreach ($packageid as $package)
            {
                $packagename = Package::select('plan_id')->where('id', $package->package_id)
                    ->get();
            }
        }
        if (isset($packagename))
        {
            foreach ($packagename as $pn)
            {
                $planmenus = DB::table('package_menu')->where('package_id', $pn->plan_id)
                    ->get();

            }
        }
        if (isset($planmenus))
        {
            foreach ($planmenus as $key => $value)
            {
                $menus[] = $value->menu_id;
            }

        }

        if (isset($menus))
        {
            $nav = Menu::whereIn('id', $menus)->get();
        }
        else
        {
            $nav = Menu::all();
        }

        $userwish = Wishlist::where('user_id', $auth->id)
            ->get();
        if (isset($userwish) && count($userwish) > 0)
        {

            foreach ($userwish as $key => $value)
            {
                if (!is_null($value->movie_id) || !is_null($value->season_id))
                {
                    $menuid = MenuVideo::where('movie_id', $value->movie_id)
                        ->get();
                    foreach ($menuid as $men => $menid)
                    {
                        // return  $menid;
                        $menuname = Menu::where('id', $menid->menu_id)
                            ->get();
                        foreach ($menuname as $sl => $menuslug)
                        {
                            if (strcmp($menuslug->slug, $slug) == 0)
                            {

                                $item = Movie::find($value->movie_id);
                                $item2 = Season::find($value->season_id);
                                if (isset($item))
                                {
                                    $movies->push($item);

                                }
                                if (isset($item2))
                                {
                                    $movies->push($item2);
                                }
                            }
                        }
                    }

                }
            }
        }
        else
        {
            return back();
        }

        return view('watchlists', compact('nav', 'movies', 'type'));
    }

    public function wishlistshow()
    {
        $menu = Menu::all();
        return view('watchlists', compact('menu'));
    }
    public function userwishlistshow($slug)
    {

        $nodata = null;
        $mytv = null;
        $mymovie = null;
        $allvideos = collect();
        $allvideos2 = collect();
        $allvideos3 = collect();
        $allvideos4 = collect();
        $allvideos5 = collect();
        $allvideos6 = collect();
        $allvideos7 = collect();
        // $nav_menus = Menu::all();
        $auth = Auth::user();
        $type = "";
        $movies = collect();
        //   return 'ttt';
         $packageid = PaypalSubscription::select('package_id')->where('user_id', $auth->id)
            ->get();
        if (isset($packageid))
        {
            foreach ($packageid as $package)
            {
                $packagename = Package::select('plan_id')->where('id', $package->package_id)
                    ->get();
            }
        }
        if (isset($packagename))
        {
            foreach ($packagename as $pn)
            {
                $planmenus = DB::table('package_menu')->where('package_id', $pn->plan_id)
                    ->get();

            }
        }
        if (isset($planmenus))
        {
            foreach ($planmenus as $key => $value)
            {
                $menus[] = $value->menu_id;
            }

        }
        if (isset($menus))
        {
            $nav = Menu::whereIn('id', $menus)->get();
        }
        else
        {
            $nav = Menu::all();
        }
        $userwish = WishlistAdmin::where('day', '1')->get();
        $userwish2 = WishlistAdmin::where('day', '2')->get();
        $userwish3 = WishlistAdmin::where('day', '3')->get();
        $userwish4 = WishlistAdmin::where('day', '4')->get();
        $userwish5 = WishlistAdmin::where('day', '5')->get();
        $userwish6 = WishlistAdmin::where('day', '6')->get();
        $userwish7 = WishlistAdmin::where('day', '7')->get();

        if (isset($userwish))
        {
            foreach ($userwish as $key => $wish)
            {
                $usergroup = WishlistUserGroup::findOrFail($wish->user_group_id);
                foreach ($usergroup->user_id as $id => $user)
                {

                    $userid = $usergroup->user_id;

                    if ($user == $auth->id)
                    {
                        // user exist
                        $videogroup = WishlistVideoGroup::findOrFail($wish->video_group_id);

                        foreach ($videogroup as $m => $movie)
                        {

                            // foreach for finding movies
                            foreach ($movie->movie_id as $mid => $movieid)
                            {
                                $arraymid[] = $movieid;

                            }
                            if (isset($arraymid))
                            {
                                $mymovie = Movie::whereIn('id', $arraymid)->get();
                                if (isset($mymovie))
                                {
                                    foreach ($mymovie as $mcheck)
                                    {

                                        $menuid = MenuVideo::where('movie_id', $mcheck->id)
                                            ->get();
                                        if (isset($menuid))
                                        {
                                            foreach ($menuid as $menid)
                                            {
                                                $menuname = Menu::where('id', $menid->menu_id)
                                                    ->get();
                                                foreach ($menuname as $sl => $menuslug)
                                                {
                                                    if (strcmp($menuslug->slug, $slug) == 0)
                                                    {
                                                        $allmovies = Movie::where('id', $mcheck->id)
                                                            ->get();
                                                        $allvideos->push($allmovies);
                                                    }
                                                }
                                            }
                                        }
                                    }

                                }

                            }
                            //tv series
                            if (isset($movie->tv_id))
                            {
                                # code...
                                foreach ($movie->tv_id as $tid => $tvid)
                                {
                                    $arraytid[] = $tvid;

                                }
                            }
                            if (isset($arraytid))
                            {
                                $mytv = TvSeries::whereIn('id', $arraytid)->get();
                                if (isset($mytv))
                                {
                                    foreach ($mytv as $mcheck)
                                    {

                                        $menuid = MenuVideo::where('tv_series_id', $mcheck->id)
                                            ->get();
                                        if (isset($menuid))
                                        {
                                            foreach ($menuid as $menid)
                                            {
                                                $menuname = Menu::where('id', $menid->menu_id)
                                                    ->get();
                                                foreach ($menuname as $sl => $menuslug)
                                                {
                                                    if (strcmp($menuslug->slug, $slug) == 0)
                                                    {
                                                        $tvseries = TvSeries::where('id', $mcheck->id)
                                                            ->get();
                                                        $allvideos->push($tvseries);
                                                    }
                                                }
                                            }

                                        }
                                    }

                                }

                            }

                        }

                    }
                    else
                    {
                        $nodata = 'No Videos are Available For You On This Day.';
                    }
                }
            }
        }
        if (isset($userwish2))
        {
            foreach ($userwish2 as $key => $wish2)
            {
                $usergroup2 = WishlistUserGroup::findOrFail($wish2->user_group_id);
                foreach ($usergroup2->user_id as $id => $user2)
                {

                    $userid2 = $usergroup2->user_id;

                    if ($user2 == $auth->id)
                    {
                        // user exist
                        $videogroup2 = WishlistVideoGroup::findOrFail($wish2->video_group_id);

                        foreach ($videogroup2 as $m => $movie2)
                        {
                            if (isset($movie2->movie_id))
                            {
                                # code...
                                // foreach for finding movies
                                foreach ($movie2->movie_id as $mid => $movieid2)
                                {
                                    $arraymid2[] = $movieid2;

                                }
                            }
                            if (isset($arraymid2))
                            {
                                $mymovie2 = null;
                                $mymovie2 = Movie::whereIn('id', $arraymid2)->get();
                                if (isset($mymovie2))
                                {
                                    foreach ($mymovie2 as $mcheck2)
                                    {

                                        $menuid2 = MenuVideo::where('movie_id', $mcheck2->id)
                                            ->get();
                                        if (isset($menuid2))
                                        {
                                            foreach ($menuid2 as $menid2)
                                            {
                                                $menuname2 = Menu::where('id', $menid2->menu_id)
                                                    ->get();
                                                foreach ($menuname2 as $sl => $menuslug2)
                                                {
                                                    if (strcmp($menuslug2->slug, $slug) == 0)
                                                    {
                                                        $allmovies2 = Movie::where('id', $mcheck2->id)
                                                            ->get();
                                                        $allvideos2->push($allmovies2);
                                                    }
                                                }
                                            }
                                        }
                                    }

                                }

                            }
                            //tv series
                            if (isset($movie2->tv_id))
                            {
                                foreach ($movie2->tv_id as $tid => $tvid2)
                                {
                                    $arraytid2[] = $tvid2;

                                }
                            }
                            if (isset($arraytid2))
                            {
                                $mytv2 = TvSeries::whereIn('id', $arraytid2)->get();
                                if (isset($mytv2))
                                {
                                    foreach ($mytv2 as $mcheck2)
                                    {

                                        $menuid2 = MenuVideo::where('tv_series_id', $mcheck2->id)
                                            ->get();
                                        if (isset($menuid2))
                                        {
                                            foreach ($menuid2 as $menid2)
                                            {
                                                $menuname2 = Menu::where('id', $menid2->menu_id)
                                                    ->get();
                                                foreach ($menuname2 as $sl => $menuslug2)
                                                {
                                                    if (strcmp($menuslug2->slug, $slug) == 0)
                                                    {
                                                        $tvseries2 = TvSeries::where('id', $mcheck2->id)
                                                            ->get();
                                                        $allvideos2->push($tvseries2);
                                                    }
                                                }
                                            }
                                        }
                                    }

                                }

                            }

                        }

                    }
                    else
                    {
                        $nodata = 'No Videos are Available For You On This Day.';
                    }
                }
            }
        }
        if (isset($userwish3))
        {
            foreach ($userwish3 as $key => $wish3)
            {
                $usergroup3 = WishlistUserGroup::findOrFail($wish3->user_group_id);
                foreach ($usergroup3->user_id as $id => $user3)
                {

                    $userid3 = $usergroup3->user_id;

                    if ($user3 == $auth->id)
                    {
                        // user exist
                        $videogroup3 = WishlistVideoGroup::findOrFail($wish3->video_group_id);

                        foreach ($videogroup3 as $m => $movie3)
                        {

                            // foreach for finding movies
                            if (isset($movie3->movie_id))
                            {
                                foreach ($movie3->movie_id as $mid => $movieid3)
                                {
                                    $arraymid3[] = $movieid3;

                                }
                            }
                            if (isset($arraymid3))
                            {
                                $mymovie3 = null;
                                $mymovie3 = Movie::whereIn('id', $arraymid3)->get();
                                if (isset($mymovie3))
                                {
                                    foreach ($mymovie3 as $mcheck3)
                                    {

                                        $menuid3 = MenuVideo::where('movie_id', $mcheck3->id)
                                            ->get();
                                        if (isset($menuid3))
                                        {
                                            foreach ($menuid3 as $menid3)
                                            {
                                                $menuname3 = Menu::where('id', $menid3->menu_id)
                                                    ->get();
                                                foreach ($menuname3 as $sl => $menuslug3)
                                                {
                                                    if (strcmp($menuslug3->slug, $slug) == 0)
                                                    {
                                                        $allmovies3 = Movie::where('id', $mcheck3->id)
                                                            ->get();
                                                        $allvideos3->push($allmovies3);
                                                    }
                                                }
                                            }
                                        }
                                    }

                                }

                            }
                            //tv series
                            if (isset($movie3->tv_id))
                            {
                                foreach ($movie3->tv_id as $tid => $tvid3)
                                {
                                    $arraytid3[] = $tvid3;

                                }
                            }
                            if (isset($arraytid3))
                            {
                                $mytv3 = TvSeries::whereIn('id', $arraytid3)->get();
                                if (isset($mytv3))
                                {
                                    foreach ($mytv3 as $mcheck3)
                                    {

                                        $menuid3 = MenuVideo::where('tv_series_id', $mcheck3->id)
                                            ->get();
                                        if (isset($menuid3))
                                        {
                                            foreach ($menuid3 as $menid)
                                            {
                                                $menuname3 = Menu::where('id', $menid3->menu_id)
                                                    ->get();
                                                foreach ($menuname3 as $sl => $menuslug3)
                                                {
                                                    if (strcmp($menuslug3->slug, $slug) == 0)
                                                    {
                                                        $tvseries3 = TvSeries::where('id', $mcheck3->id)
                                                            ->get();
                                                        $allvideos3->push($tvseries3);
                                                    }
                                                }
                                            }
                                        }
                                    }

                                }

                            }

                        }

                    }
                    else
                    {
                        $nodata = 'No Videos are Available For You On This Day.';
                    }
                }
            }
        }
        if (isset($userwish4))
        {
            foreach ($userwish4 as $key => $wish4)
            {
                $usergroup4 = WishlistUserGroup::findOrFail($wish4->user_group_id);
                foreach ($usergroup4->user_id as $id => $user4)
                {

                    $userid4 = $usergroup4->user_id;

                    if ($user4 == $auth->id)
                    {
                        // user exist
                        $videogroup4 = WishlistVideoGroup::findOrFail($wish4->video_group_id);

                        foreach ($videogroup4 as $m => $movie4)
                        {

                            // foreach for finding movies
                            if (isset($movie4->movie_id))
                            {
                                foreach ($movie4->movie_id as $mid => $movieid4)
                                {
                                    $arraymid4[] = $movieid4;

                                }
                            }
                            if (isset($arraymid4))
                            {
                                $mymovie4 = null;
                                $mymovie4 = Movie::whereIn('id', $arraymid4)->get();
                                if (isset($mymovie4))
                                {
                                    foreach ($mymovie4 as $mcheck4)
                                    {

                                        $menuid4 = MenuVideo::where('movie_id', $mcheck4->id)
                                            ->get();
                                        if (isset($menuid4))
                                        {
                                            foreach ($menuid4 as $menid4)
                                            {
                                                $menuname4 = Menu::where('id', $menid4->menu_id)
                                                    ->get();
                                                foreach ($menuname4 as $sl => $menuslug4)
                                                {
                                                    if (strcmp($menuslug4->slug, $slug) == 0)
                                                    {

                                                        $allmovies4 = Movie::where('id', $mcheck4->id)
                                                            ->get();
                                                        $allvideos4->push($allmovies4);
                                                    }
                                                }
                                            }
                                        }
                                    }

                                }

                            }
                            //tv series
                            if (isset($movie4->tv_id))
                            {
                                foreach ($movie4->tv_id as $tid => $tvid4)
                                {
                                    $arraytid4[] = $tvid4;

                                }
                            }
                            if (isset($arraytid4))
                            {
                                $mytv4 = TvSeries::whereIn('id', $arraytid4)->get();
                                if (isset($mytv4))
                                {
                                    foreach ($mytv4 as $mcheck4)
                                    {

                                        $menuid4 = MenuVideo::where('tv_series_id', $mcheck4->id)
                                            ->get();
                                        if (isset($menuid4))
                                        {
                                            foreach ($menuid4 as $menid4)
                                            {
                                                $menuname4 = Menu::where('id', $menid4->menu_id)
                                                    ->get();
                                                foreach ($menuname4 as $sl => $menuslug4)
                                                {
                                                    if (strcmp($menuslug4->slug, $slug) == 0)
                                                    {
                                                        $tvseries4 = TvSeries::where('id', $mcheck->id)
                                                            ->get();
                                                        $allvideos4->push($tvseries4);
                                                    }
                                                }
                                            }
                                        }
                                    }

                                }

                            }

                        }

                    }
                    else
                    {
                        $nodata = 'No Videos are Available For You On This Day.';
                    }
                }
            }
        }
        if (isset($userwish5))
        {
            foreach ($userwish5 as $key => $wish5)
            {
                $usergroup5 = WishlistUserGroup::findOrFail($wish5->user_group_id);
                foreach ($usergroup5->user_id as $id => $user5)
                {

                    $userid5 = $usergroup5->user_id;

                    if ($user5 == $auth->id)
                    {
                        // user exist
                        $videogroup5 = WishlistVideoGroup::findOrFail($wish5->video_group_id);

                        foreach ($videogroup5 as $m => $movie5)
                        {

                            // foreach for finding movies
                            if (isset($movie5->movie_id))
                            {
                                foreach ($movie5->movie_id as $mid => $movieid5)
                                {
                                    $arraymid5[] = $movieid5;

                                }
                            }
                            if (isset($arraymid5))
                            {
                                $mymovie5 = null;
                                $mymovie5 = Movie::whereIn('id', $arraymid5)->get();
                                if (isset($mymovie5))
                                {
                                    foreach ($mymovie5 as $mcheck5)
                                    {

                                        $menuid5 = MenuVideo::where('movie_id', $mcheck5->id)
                                            ->get();
                                        if (isset($menuid5))
                                        {
                                            foreach ($menuid5 as $menid5)
                                            {
                                                $menuname5 = Menu::where('id', $menid5->menu_id)
                                                    ->get();
                                                foreach ($menuname5 as $sl => $menuslug5)
                                                {
                                                    if (strcmp($menuslug5->slug, $slug) == 0)
                                                    {
                                                        $allmovies5 = Movie::where('id', $mcheck5->id)
                                                            ->get();
                                                        $allvideos5->push($allmovies5);
                                                    }
                                                }
                                            }
                                        }
                                    }

                                }

                            }
                            //tv series
                            if (isset($movie5->tv_id))
                            {
                                foreach ($movie5->tv_id as $tid => $tvid5)
                                {
                                    $arraytid5[] = $tvid5;

                                }
                            }
                            if (isset($arraytid5))
                            {
                                $mytv5 = TvSeries::whereIn('id', $arraytid5)->get();
                                if (isset($mytv5))
                                {
                                    foreach ($mytv5 as $mcheck5)
                                    {

                                        $menuid5 = MenuVideo::where('tv_series_id', $mcheck5->id)
                                            ->get();
                                        if (isset($menuid5))
                                        {
                                            foreach ($menuid5 as $menid5)
                                            {
                                                $menuname5 = Menu::where('id', $menid5->menu_id)
                                                    ->get();
                                                foreach ($menuname5 as $sl => $menuslug5)
                                                {
                                                    if (strcmp($menuslug5->slug, $slug) == 0)
                                                    {
                                                        $tvseries5 = TvSeries::where('id', $mcheck5->id)
                                                            ->get();
                                                        $allvideos5->push($tvseries5);
                                                    }
                                                }
                                            }
                                        }
                                    }

                                }

                            }

                        }

                    }
                    else
                    {
                        $nodata = 'No Videos are Available For You On This Day.';
                    }
                }
            }
        }
        if (isset($userwish6))
        {
            foreach ($userwish6 as $key => $wish6)
            {
                $usergroup6 = WishlistUserGroup::findOrFail($wish6->user_group_id);
                foreach ($usergroup6->user_id as $id => $user6)
                {

                    $userid6 = $usergroup6->user_id;

                    if ($user6 == $auth->id)
                    {
                        // user exist
                        $videogroup6 = WishlistVideoGroup::findOrFail($wish6->video_group_id);

                        foreach ($videogroup6 as $m => $movie6)
                        {

                            // foreach for finding movies
                            if (isset($movie6->movie_id))
                            {
                                foreach ($movie6->movie_id as $mid => $movieid6)
                                {
                                    $arraymid6[] = $movieid6;

                                }
                            }
                            if (isset($arraymid6))
                            {
                                $mymovie6 = null;
                                $mymovie6 = Movie::whereIn('id', $arraymid6)->get();
                                if (isset($mymovie6))
                                {
                                    foreach ($mymovie6 as $mcheck6)
                                    {

                                        $menuid6 = MenuVideo::where('movie_id', $mcheck6->id)
                                            ->get();
                                        if (isset($menuid6))
                                        {
                                            foreach ($menuid6 as $menid6)
                                            {
                                                $menuname6 = Menu::where('id', $menid6->menu_id)
                                                    ->get();
                                                foreach ($menuname6 as $sl => $menuslug6)
                                                {
                                                    if (strcmp($menuslug6->slug, $slug) == 0)
                                                    {
                                                        $allmovies6 = Movie::where('id', $mcheck6->id)
                                                            ->get();
                                                        $allvideos6->push($allmovies6);
                                                    }
                                                }
                                            }
                                        }
                                    }

                                }

                            }
                            //tv series
                            if (isset($movie6->tv_id))
                            {
                                foreach ($movie6->tv_id as $tid => $tvid6)
                                {
                                    $arraytid6[] = $tvid6;

                                }
                            }
                            if (isset($arraytid6))
                            {
                                $mytv6 = TvSeries::whereIn('id', $arraytid6)->get();
                                if (isset($mytv6))
                                {
                                    foreach ($mytv6 as $mcheck6)
                                    {

                                        $menuid6 = MenuVideo::where('tv_series_id', $mcheck6->id)
                                            ->get();
                                        if (isset($menuid6))
                                        {
                                            foreach ($menuid6 as $menid6)
                                            {
                                                $menuname6 = Menu::where('id', $menid6->menu_id)
                                                    ->get();
                                                foreach ($menuname6 as $sl => $menuslug6)
                                                {
                                                    if (strcmp($menuslug6->slug, $slug) == 0)
                                                    {
                                                        $tvseries6 = TvSeries::where('id', $mcheck6->id)
                                                            ->get();
                                                        $allvideos6->push($tvseries6);
                                                    }
                                                }
                                            }
                                        }
                                    }

                                }

                            }

                        }

                    }
                    else
                    {
                        $nodata = 'No Videos are Available For You On This Day.';
                    }
                }
            }
        }
        if (isset($userwish7))
        {
            foreach ($userwish7 as $key => $wish7)
            {
                $usergroup7 = WishlistUserGroup::findOrFail($wish7->user_group_id);
                foreach ($usergroup7->user_id as $id => $user7)
                {

                    $userid7 = $usergroup7->user_id;

                    if ($user7 == $auth->id)
                    {
                        // user exist
                        $videogroup7 = WishlistVideoGroup::findOrFail($wish7->video_group_id);

                        foreach ($videogroup7 as $m => $movie7)
                        {

                            // foreach for finding movies
                            if (isset($movie7->movie_id))
                            {
                                foreach ($movie7->movie_id as $mid => $movieid7)
                                {
                                    $arraymid7[] = $movieid7;

                                }
                            }
                            if (isset($arraymid7))
                            {
                                $mymovie7 = null;
                                $mymovie7 = Movie::whereIn('id', $arraymid7)->get();
                                if (isset($mymovie7))
                                {
                                    foreach ($mymovie7 as $mcheck7)
                                    {

                                        $menuid7 = MenuVideo::where('movie_id', $mcheck7->id)
                                            ->get();
                                        if (isset($menuid7))
                                        {
                                            foreach ($menuid7 as $menid7)
                                            {
                                                $menuname7 = Menu::where('id', $menid7->menu_id)
                                                    ->get();
                                                foreach ($menuname7 as $sl => $menuslug7)
                                                {
                                                    if (strcmp($menuslug7->slug, $slug) == 0)
                                                    {
                                                        $allmovies7 = Movie::where('id', $mcheck7->id)
                                                            ->get();
                                                        $allvideos7->push($allmovies7);
                                                    }
                                                }
                                            }
                                        }
                                    }

                                }

                            }
                            //tv series
                            if (isset($movie7->tv_id))
                            {
                                foreach ($movie7->tv_id as $tid => $tvid7)
                                {
                                    $arraytid7[] = $tvid7;

                                }
                            }
                            if (isset($arraytid7))
                            {
                                $mytv7 = TvSeries::whereIn('id', $arraytid7)->get();
                                if (isset($mytv7))
                                {
                                    foreach ($mytv7 as $mcheck7)
                                    {

                                        $menuid7 = MenuVideo::where('tv_series_id', $mcheck7->id)
                                            ->get();
                                        if (isset($menuid7))
                                        {
                                            foreach ($menuid7 as $menid7)
                                            {
                                                $menuname7 = Menu::where('id', $menid7->menu_id)
                                                    ->get();
                                                foreach ($menuname7 as $sl => $menuslug7)
                                                {
                                                    if (strcmp($menuslug7->slug, $slug) == 0)
                                                    {
                                                        $tvseries7 = TvSeries::where('id', $mcheck7->id)
                                                            ->get();
                                                        $allvideos7->push($tvseries7);
                                                    }
                                                }
                                            }
                                        }
                                    }

                                }

                            }

                        }

                    }
                    else
                    {
                        $nodata = 'No Videos are Available For You On This Day.';
                    }
                }
            }
        }

        $allvideos = $allvideos->flatten();
        // $allvideos=$allvideos->unique('id')->values()->all();
        $allvideos2 = $allvideos2->flatten();
        // $allvideos2=$allvideos2->unique('id')->values()->all();
        $allvideos3 = $allvideos3->flatten();
        // $allvideos3=$allvideos3->unique('id')->values()->all();
        $allvideos4 = $allvideos4->flatten();
        // $allvideos4=$allvideos4->unique('id')->values()->all();
        $allvideos5 = $allvideos5->flatten();
        // $allvideos5=$allvideos5->unique('id')->values()->all();
        $allvideos6 = $allvideos6->flatten();
        // $allvideos6=$allvideos6->unique('id')->values()->all();
        $allvideos7 = $allvideos7->flatten();
        // $allvideos7=$allvideos7->unique('id')->values()->all();
        return view('userwatchlist', compact('nav', 'allvideos', 'allvideos2', 'allvideos3', 'allvideos4', 'type', 'allvideos7', 'allvideos6', 'allvideos5', 'nodata', 'slug'));
    }

    public function addWishList(Request $request)
    {
        $auth = Auth::user();
        $input['user_id'] = $auth->id;

        if ($request->type == 'M')
        {

            $wishlist = DB::table('wishlists')->where([['user_id', '=', $auth->id], ['movie_id', '=', $request
                ->id], ])
                ->first();
            if (isset($wishlist) && count($wishlist) > 0 && $wishlist->added === 1)
            {
                DB::table('wishlists')
                    ->where([['user_id', '=', $auth->id], ['movie_id', '=', $request
                    ->id], ])
                    ->update(['added' => false]);
            }
            elseif (isset($wishlist) && count($wishlist) > 0 && $wishlist->added === 0)
            {
                DB::table('wishlists')
                    ->where([['user_id', '=', $auth->id], ['movie_id', '=', $request
                    ->id], ])
                    ->update(['added' => true]);
            }
            else
            {
                $input['movie_id'] = $request->id;
                $input['added'] = 1;
                Wishlist::create($input);
            }

        }
        elseif ($request->type === 'S')
        {

            $wishlist = DB::table('wishlists')->where([['user_id', '=', $auth->id], ['season_id', '=', $request
                ->id], ])
                ->first();

            if (isset($wishlist) && count($wishlist) > 0 && $wishlist->added === 1)
            {
                DB::table('wishlists')
                    ->where([['user_id', '=', $auth->id], ['season_id', '=', $request
                    ->id], ])
                    ->update(['added' => false]);

            }
            elseif (isset($wishlist) && count($wishlist) > 0 && $wishlist->added === 0)
            {
                DB::table('wishlists')
                    ->where([['user_id', '=', $auth->id], ['season_id', '=', $request
                    ->id], ])
                    ->update(['added' => true]);
            }
            else
            {
                $input['season_id'] = $request->id;
                $input['added'] = 1;
                Wishlist::create($input);
            }
        }
    }

    public function showdestroy($id)
    {
        $show = Wishlist::where('season_id', $id)->first();
        $show->delete();
        return back();
    }

    public function moviedestroy($id)
    {
        $movie = Wishlist::where('movie_id', $id)->first();
        $movie->delete();
        return back();
    }
}

