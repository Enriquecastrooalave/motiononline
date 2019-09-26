<?php $__env->startSection('title','Edit Group'); ?>
<?php $__env->startSection('content'); ?>
  <div class="admin-form-main-block">
    <h4 class="admin-form-text"><a href="<?php echo e(url('admin/wishlist/usergroup')); ?>" data-toggle="tooltip" data-original-title="Go back" class="btn-floating"><i class="material-icons">reply</i></a> Edit User Group</h4>
    <div class="row">
      <div class="col-md-9">
        <div class="admin-form-block z-depth-1">
         <?php echo Form::model($group, ['method' => 'PATCH', 'action' => ['WishListUserGroupController@update', $group->id]]); ?>

            <div id="title" class="form-group<?php echo e($errors->has('title') ? ' has-error' : ''); ?>">
                <?php echo Form::label('title', 'Group Title'); ?>

                <i class="fa fa-info-circle" data-toggle="tooltip" data-placement="top" title="Enter Froup title Eg:Crime Movies"></i>
                <?php echo Form::text('title', null, ['class' => 'form-control', 'placeholder' => 'Please enter group title']); ?>

                <small class="text-danger"><?php echo e($errors->first('title')); ?></small>
            </div>
           
            <select class="js-example-basic-multiple" name="user_id[]" multiple="multiple">
               <?php if(isset($old_user) && count($old_user) > 0): ?>
                      <?php $__currentLoopData = $old_user; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $old): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <option value="<?php echo e($old->id); ?>" selected="selected"><?php echo e($old->name); ?></option> 
                      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php endif; ?>
                    <?php if(isset($user)): ?>
                      <?php $__currentLoopData = $user; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $users): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <option value="<?php echo e($users->id); ?>"><?php echo e($users->name); ?></option> 
                      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php endif; ?>
               
</select>

<br><br>
            <div class="btn-group pull-right">
              <button type="reset" class="btn btn-info"><i class="material-icons left">toys</i> Reset</button>
              <button type="submit" class="btn btn-success"><i class="material-icons left">add_to_photos</i> Update</button>
            </div>

            <div class="clear-both"></div>
          <?php echo Form::close(); ?>

        </div>
      </div>
    </div>
  </div>
 
 
<?php $__env->stopSection(); ?>

<?php $__env->startSection('custom-script'); ?>
<script type="text/javascript">
  $(document).ready(function() {
    $('.js-example-basic-multiple').select2();
});
</script>
  
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.admin', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>