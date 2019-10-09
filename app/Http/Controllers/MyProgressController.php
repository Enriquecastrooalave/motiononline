<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\FAQ;
use App\MyProgress;
use DB;
use App\User;
use App\Excersice;
use App\ExerciseReport;
use Auth;
class MyProgressController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
   
     $weight[]=null;$fat[]=null;$mydate[]=null;
     $exercise[]=null;$exvalue[]=null;$exmydate[]=null;
     $exvalue2[]=null;$exvalue3[]=null;$exvalue4[]=null;
    $exvalue5[]=null;$exmydate2[]=null;
     $exvalue6[]=null;$exvalue7[]=null;$exvalue8[]=null;
     $calorie[]=null;

    $exchart=\Charts::multi('areaspline', 'highcharts')
     ->title('Fuerza')
 ->colors(['#ff0000'])
 ->labels($exmydate)
 ->dataset($exercise[0],  $exvalue,[' ']);

  $exchart2=\Charts::multi('areaspline', 'highcharts')
     ->title('Fuerza')
 ->colors(['#ff0000'])
 ->labels($exmydate2)
 ->dataset($exercise[0],  $exvalue,[' ']);


     $auth = Auth::user();
     $myexercise=Excersice::take(4)->get();
     $myexercise2=Excersice::skip(4)->take(4)->get();
     $exercise[0]='exersice 1'; $exercise[1]='exersice 2'; 
     $exercise[2]='exersice 3'; $exercise[3]='exersice 4';
      $exercise[4]='exersice 5'; $exercise[5]='exersice 6'; 
     $exercise[6]='exersice 7'; $exercise[7]='exersice 8';

     $id[]=0;
     if (isset($auth)) {

       $user_data=MyProgress::where('user_id',$auth->id)->get();
       if (isset($user_data)) {
        foreach ($user_data as $key => $value) {
         $weight[]= (int)$value->weight;
         $fat[]= (int)$value->fat;
         $calorie[]= (int)$value->calorie/10;
         $datetime=$value->created_at;
         $mydate[]=substr($datetime, 0, 10);
       }
     }
     $exer=Excersice::all();
     if (isset($exer) && count($exer)>0) {
       # code...
      $i=0;
     foreach ($exer as $ex) {
       
         $exercise[$i]=$ex->name;
        $i++;
     
      $id[]=$ex->id;
      
    
      
    }

    array_shift($id);
  // return $exercise[3];
      // for id =1
      if (isset($id[0])) {
         
        $mydata=ExerciseReport::where('exercise_id',$id[0])->where('user_id',$auth->id)->get();
    if (isset($mydata)) {
      foreach ($mydata as $myx) {
        $exvalue[]=$myx->value;
        
      }
    }
      }
   
         // for id =2
       if (isset($id[1])) {
    $mydata2=ExerciseReport::where('exercise_id',$id[1])->where('user_id',$auth->id)->get();
    if (isset($mydata2)) {
      foreach ($mydata2 as $myx2) {
        $exvalue2[]=$myx2->value;

      }
    }
  }
         // for id =3
   if (isset($id[2])) {
    $mydata3=ExerciseReport::where('exercise_id',$id[2])->where('user_id',$auth->id)->get();
    if (isset($mydata3)) {
      foreach ($mydata3 as $myx3) {
        $exvalue3[]=$myx3->value;

      }
    }
  }
         // for id =4
   if (isset($id[3])) {
    $mydata4=ExerciseReport::where('exercise_id',$id[3])->where('user_id',$auth->id)->get();
    if (isset($mydata4)) {
      foreach ($mydata4 as $myx4) {
        $exvalue4[]=$myx4->value;

      }
    }
  }
   // for id =5
   if (isset($id[4])) {
    $mydata5=ExerciseReport::where('exercise_id',$id[4])->where('user_id',$auth->id)->get();
    if (isset($mydata5)) {
      foreach ($mydata5 as $myx5) {
        $exvalue5[]=$myx5->value;

      }
    }
  }
  // for id =6
   if (isset($id[5])) {
    $mydata6=ExerciseReport::where('exercise_id',$id[5])->where('user_id',$auth->id)->get();
    if (isset($mydata6)) {
      foreach ($mydata6 as $myx6) {
        $exvalue6[]=$myx6->value;
      }
    }
  }
  // for id =7
   if (isset($id[6])) {
    $mydata7=ExerciseReport::where('exercise_id',$id[6])->where('user_id',$auth->id)->get();
    if (isset($mydata7)) {
      foreach ($mydata7 as $myx7) {
        $exvalue7[]=$myx7->value;
      }
    }
  }
   // for id =8
   if (isset($id[7])) {
    $mydata8=ExerciseReport::where('exercise_id',$id[7])->where('user_id',$auth->id)->get();
    if (isset($mydata8)) {
      foreach ($mydata8 as $myx8) {
        $exvalue8[]=$myx8->value;
      }
    }
  }
    $ex_data=ExerciseReport::where('user_id',$auth->id)->get();
    if (isset($ex_data)) {
      foreach ($ex_data as $exkey ) {
       $exdatetime=$exkey->created_at;
       $exmydate[]=substr($exdatetime, 0, 10);

     }

   }

 // array_shift($exercise);
 array_shift($exvalue);
 array_shift($exvalue2); 
 array_shift($exvalue3); 
 array_shift($exvalue4);
array_shift($exvalue5);
array_shift($exvalue7);
array_shift($exvalue8);
array_shift($exvalue6);


 // exersice Chart
 $exchart = \Charts::multi('areaspline', 'highcharts')
 ->title('Fuerza')
 ->colors(['#ff0000','#009432','#ff9f43','#192a56'])
 ->labels($exmydate)

 ->dataset($exercise[0],  $exvalue, ['kg'])
 ->dataset($exercise[1],  $exvalue2, ['jh'])
 ->dataset($exercise[2],  $exvalue3, ['yt'])
 ->dataset($exercise[3],  $exvalue4, ['hg']);

 // exersice Chart
 $exchart2 = \Charts::multi('areaspline', 'highcharts')
 ->title('Fuerza')
 ->colors(['#ff0000','#009432','#ff9f43','#192a56'])
 ->labels($exmydate)

 ->dataset($exercise[4],  $exvalue5, ['kg'])
 ->dataset($exercise[5],  $exvalue6, ['jh'])
 ->dataset($exercise[6],  $exvalue7, ['yt'])
 ->dataset($exercise[7],  $exvalue8, ['hg']);
 }
 }

 array_shift($weight);
 array_shift($fat);
 array_shift($calorie);
$weight=array_filter($weight);
$fat=array_filter($fat);
$calorie=array_filter($calorie);
 $chart = \Charts::multi('areaspline', 'highcharts')
 ->title('Composicion corporal')
 ->colors(['#ff0000', '#01a3a4', '#ff9f43'])
 ->labels($mydate)
 ->dataset('Weight', $weight,['KG'])
 ->dataset('Calories', $calorie,['KG'])
 ->dataset('Fat%',  $fat,['%']);



 return view('myprogress',compact('chart','myexercise','myexercise2','exchart','exchart2'));

}

public function editchart(){
  $auth=Auth::user()->id;
  $data=MyProgress::where('user_id',$auth)->orderBy('created_at','DESC')->get();
  return view('editchart',compact('data'));
}

  public function update(Request $request, $id)
    {
        $data = MyProgress::findOrFail($id);

        $input = $request->all();

        $data->update($input);
        return back()->with('updated', 'Report has been updated');
    }

public function editexercisechart(){
  $auth=Auth::user()->id;
  $myexercise=Excersice::all();
  $data=ExerciseReport::where('user_id',$auth)->orderBy('created_at','DESC')->get();
  return view('editexercisechart',compact('data','myexercise'));
}

  public function updateexercisechart(Request $request, $id)
    {
        $data = ExerciseReport::findOrFail($id);

        $input = $request->all();

        $data->update($input);
        return back()->with('updated', 'Report has been updated');
    }

    

public function storeexcercise(Request $request)
{
  $request->validate([
    'exercise_id' => 'required'

  ]);
  $auth=Auth::user();

  $input = $request->all();
  $input['user_id']=$auth->id;
  ExerciseReport::create($input);
  return back()->with('updated', 'Your Progress has been Updated');
}
public function store(Request $request)
{
  // $request->validate([
  //   'weight' => 'required',
  //   'fat' => 'required'
  // ]);
  $auth=Auth::user();

  $input = $request->all();
  $input['user_id']=$auth->id;
  MyProgress::create($input);
  return back()->with('updated', 'Your Progress has been Updated');
}
 public function destroy($id)
    {
        $data = MyProgress::findOrFail($id);

        $data->delete();
        return back()->with('deleted', 'Report Item has been deleted');
    }
 public function destroyex($id)
    {
        $data = ExerciseReport::findOrFail($id);

        $data->delete();
        return back()->with('deleted', 'Report Item has been deleted');
    }


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

  }
