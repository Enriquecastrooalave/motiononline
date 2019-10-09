<?php $__env->startSection('title',"My Progress"); ?>
<?php $__env->startSection('main-wrapper'); ?>
<!-- main wrapper -->

<section id="main-wrapper" class="main-wrapper">
  <div class="container-fluid">
   <div class="watchlist-main-block"><br><br>
    <h4><?php echo e($header_translations->where('key', 'report')->first->value->value); ?></h4><br><br>
    <div class="row">
      <div class="col-sm-2">
        <h5><?php echo e($header_translations->where('key', 'weight')->first->value->value); ?></h5></div>
        <div class="col-sm-1">
         <button class="btn btn-sm btn-primary"><a style="color: #fff;" type ="button" href="<?php echo e(route('editchart')); ?>">Edita <?php echo e($header_translations->where('key', 'weight')->first->value->value); ?></a></button> 
       </div>
     </div>
     <div class="row">
      <div class="col-md-9 col-sm-12">
        <div class="panel-body">  

          <?php echo $chart->html(); ?>

        </div>
      </div>
      <div class="col-md-3 col-sm-6">
        <div style="color: white;">

          <?php echo Form::open(['method' => 'POST', 'action' => 'MyProgressController@store']); ?>


          <div id="weight" class="form-group<?php echo e($errors->has('weight') ? ' has-error' : ''); ?>">
            <?php echo Form::label('weight', 'Peso'); ?>

    
            <?php echo Form::text('weight', null, ['class' => 'form-control', 'placeholder' => 'Ingresa tu peso ']); ?>

            <small class="text-danger"><?php echo e($errors->first('weight')); ?></small>
          </div>
          <div id="fat" class="form-group<?php echo e($errors->has('fat') ? ' has-error' : ''); ?>">
            <?php echo Form::label('fat', '% de Grasa'); ?>

         
            <?php echo Form::text('fat', null, ['class' => 'form-control', 'placeholder' => 'Ingresa tu % de grasa']); ?>

            <small class="text-danger"><?php echo e($errors->first('fat')); ?></small>
          </div>
<div id="fat" class="form-group<?php echo e($errors->has('calorie') ? ' has-error' : ''); ?>">
            <?php echo Form::label('calorie', 'Calorias diarias'); ?>


            <?php echo Form::text('calorie', null, ['class' => 'form-control', 'placeholder' => 'Ingresa tus calorias diarias']); ?>

            <small class="text-danger"><?php echo e($errors->first('calorie')); ?></small>
          </div>
          <button type="submit" class="btn btn-primary btn-block">Registrar</button>
          
          <?php echo Form::close(); ?>

        </div>

      </div>
    </div><br><br>
   
     <div class="row">
      <div class="col-sm-2">
        <h5><?php echo e($header_translations->where('key', 'excercise')->first->value->value); ?></h5></div>
        <div class="col-sm-1">
         <button class="btn btn-sm btn-primary"><a style="color: #fff;" type ="button" href="<?php echo e(route('editexercisechart')); ?>">Edita <?php echo e($header_translations->where('key', 'excercise')->first->value->value); ?></a></button> 
       </div>
     </div>
   
    <div class="row">
      <div class="col-md-9 col-sm-12">
        <div class="panel-body">
          <?php if(isset($exchart)): ?>    
          <?php echo $exchart->html(); ?>

          <?php endif; ?>
        </div>
      </div>
      <div class="col-md-3 col-sm-6">
        <div style="color: #bdc3c7;">
          <?php echo Form::open(['method' => 'POST', 'action' => 'MyProgressController@storeexcercise']); ?>


          <div id="exercise_id" class="form-group<?php echo e($errors->has('exercise_id') ? ' has-error' : ''); ?>">
            <?php echo Form::label('exercise_id', 'Selecciona ejercicio'); ?>


            <select class="form-control" id="exercise_id"  name="exercise_id" >
              <?php $__currentLoopData = $myexercise; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $exer): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
              <option style="color: black;" value="<?php echo e($exer->id); ?>"><?php echo e($exer->name); ?></option>
              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </select>
            <small class="text-danger"><?php echo e($errors->first('exercise_id')); ?></small>
          </div>


          <div id="value" class="form-group<?php echo e($errors->has('value') ? ' has-error' : ''); ?>">
            <?php echo Form::label('value', 'Peso levantado'); ?>


            <?php echo Form::text('value', null, ['class' => 'form-control', 'placeholder' => 'Ingresa el peso levantado']); ?>

            <small class="text-danger"><?php echo e($errors->first('value')); ?></small>
          </div>

          <button type="submit" class="btn btn-primary btn-block">Registrar</button>
          
          <?php echo Form::close(); ?>

        </div>

      </div>
    </div>

    
    <?php if(isset($myexercise2) && count($myexercise2)>0): ?>
    <div class="row">
      <div class="col-md-9 col-sm-12">
        <div class="panel-body">
          <?php if(isset($exchart2)): ?>    
          <?php echo $exchart2->html(); ?>

          <?php endif; ?>
        </div>
      </div>
      <div class="col-md-3 col-sm-6">
        <div style="color: #bdc3c7;">
          <?php echo Form::open(['method' => 'POST', 'action' => 'MyProgressController@storeexcercise']); ?>


          <div id="exercise_id" class="form-group<?php echo e($errors->has('exercise_id') ? ' has-error' : ''); ?>">
            <?php echo Form::label('exercise_id', 'Select Exercise'); ?>


            <select class="form-control" id="exercise_id"  name="exercise_id" >
              <?php $__currentLoopData = $myexercise2; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $exer): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
              <option style="color: black;" value="<?php echo e($exer->id); ?>"><?php echo e($exer->name); ?></option>
              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </select>
            <small class="text-danger"><?php echo e($errors->first('exercise_id')); ?></small>
          </div>


          <div id="value" class="form-group<?php echo e($errors->has('value') ? ' has-error' : ''); ?>">
            <?php echo Form::label('value', 'Counts/Value'); ?>

 
            <?php echo Form::text('value', null, ['class' => 'form-control', 'placeholder' => 'Please enter your Exercise Count or Weight lifted.']); ?>

            <small class="text-danger"><?php echo e($errors->first('value')); ?></small>
          </div>

          <button type="submit" class="btn btn-primary btn-block">Registrar</button>
          
          <?php echo Form::close(); ?>

        </div>

      </div>
    </div>
    <?php endif; ?>
  </div>
</div>
</section>
<!-- end main wrapper -->
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
<?php echo Charts::scripts(); ?>

<?php echo $chart->script(); ?>


<?php echo $exchart->script(); ?> 
<?php echo $exchart2->script(); ?> 

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.theme', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>