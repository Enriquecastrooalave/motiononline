<?php $__env->startSection('title','Create Language'); ?>
<?php $__env->startSection('content'); ?>
  <div class="admin-form-main-block mrg-t-40">
    <h4 class="admin-form-text"><a href="<?php echo e(url('admin/languages')); ?>" data-toggle="tooltip" data-original-title="Go back" class="btn-floating"><i class="material-icons">reply</i></a> Create Language</h4>
    <div class="row">
      <div class="col-md-6">
        <div class="admin-form-block z-depth-1">
          <?php echo Form::open(['method' => 'POST', 'action' => 'LanguageController@store']); ?>

            <div class="form-group<?php echo e($errors->has('local') ? ' has-error' : ''); ?>">
                <?php echo Form::label('local', 'local'); ?>

                <p class="inline info"> - Please enter language local name</p>
                <?php echo Form::text('local', null, ['class' => 'form-control', 'required' => 'required']); ?>

                <small class="text-danger"><?php echo e($errors->first('local')); ?></small>
            </div>
            <div class="form-group<?php echo e($errors->has('name') ? ' has-error' : ''); ?>">
                <?php echo Form::label('name', 'Name'); ?>

                <p class="inline info"> - Please enter language name</p>
                <?php echo Form::text('name', null, ['class' => 'form-control', 'required' => 'required']); ?>

                <small class="text-danger"><?php echo e($errors->first('name')); ?></small>
            </div>

            <div class="form-group">
              <label for="">Set Default</label>
              <br>
              <label class="switch">
                     <input name="def" type="checkbox" class="checkbox-switch" id="logo_chk">
                    <span class="slider round"></span>
                </label>
            </div>

            <div class="btn-group pull-right">
              <button type="reset" class="btn btn-info"><i class="material-icons left">toys</i> Reset</button>
              <button type="submit" class="btn btn-success"><i class="material-icons left">add_to_photos</i> Create</button>
            </div>
            <div class="clear-both"></div>
          <?php echo Form::close(); ?>

        </div>
      </div>
    </div>
  </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.admin', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>