<?php $__env->startSection('title',"Ask Question"); ?>
<?php $__env->startSection('main-wrapper'); ?>
  <!-- main wrapper -->
  
  <section id="main-wrapper" class="main-wrapper">
    <div class="container-fluid">
       <div class="watchlist-main-block"><br><br>
     
      <div class="row">
        <?php
          $auth=Auth::user();
         $question=App\Question::where('user_id',$auth->id)->whereDate('created_at', '=', $date)->get();
        ?>
      
         <div class="col-md-7 col-md-12">
          <div class="row">
        <div class="col-md-9">
          <h5>Most Recent- <?php echo e(str_limit($date, 10,' ')); ?></h5>
        </div>
         <div class="col-md-3">
         <a href="<?php echo e(url('askquestion/viewall')); ?>" class="btn btn-danger">Old Questions</a>
        </div>
      </div> <hr>
        <?php if(isset($question) && count($question)>0): ?>
         <?php $__currentLoopData = $question; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $ques): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
       
        <p style="font-size: 16px; color: #286090">Ques: <?php echo e($ques->question); ?>?</p>
        <?php if(isset($ques->answer) && !is_null($ques->answer)): ?>
        <p style="font-size: 16px;">Reply: <?php echo e($ques->answer); ?></p>
        <?php else: ?>
         <p style="font-size: 16px;">Reply: No Reply Yet.</p>
        <?php endif; ?>
         <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
         <?php else: ?>
           <p style="font-size: 18px; color: #d63031">No Questions Asked!</p>
        <?php endif; ?>
         </div>
          <div class="col-md-5 col-sm-9" >
                <div style="color: white;"style="position: sticky; top: 0;">
<?php echo Form::open(['method' => 'POST', 'action' => 'AskQuestionController@store', 'files' => true]); ?>

          <div id="question" class="form-group<?php echo e($errors->has('question') ? ' has-error' : ''); ?>">
                <?php echo Form::label('question', 'Ask Question'); ?>

                <i class="fa fa-info-circle" data-toggle="tooltip" data-placement="top" title="Enter your question"></i>
                <?php echo Form::textarea('question', null, ['class' => 'form-control', 'placeholder' => 'Please enter your Question']); ?>

                <small class="text-danger"><?php echo e($errors->first('question')); ?></small>
            </div>

              <button type="submit" class="btn btn-primary btn-block">Ask</button>
          
            <?php echo Form::close(); ?>

                </div>
            
              </div>
          </div>
    </div>
    </div>
  </section>
  <!-- end main wrapper -->
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.theme', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>