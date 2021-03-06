<?php $__env->startSection('title', 'API Settings'); ?>

<?php $__env->startSection('content'); ?>
  <div class="admin-form-main-block mrg-t-40">
    <h4 class="admin-form-text">API Settings</h4>
      <?php echo Form::model($env_files, ['method' => 'POST', 'action' => 'ConfigController@changeEnvKeys']); ?>

        <div class="row admin-form-block z-depth-1">
          <div class="api-main-block">
            <h5 class="form-block-heading">Payment Gateways</h5>
            <div class="payment-gateway-block">
              <div class="form-group">
                <div class="row">
                  <div class="col-xs-6">
                    <?php echo Form::label('stripe_payment', 'STRIPE PAYMENT'); ?>

                  </div>
                  <div class="col-xs-5 text-right">
                    <label class="switch">
                      <?php echo Form::checkbox('stripe_payment', 1, $config->stripe_payment, ['class' => 'checkbox-switch']); ?>

                      <span class="slider round"></span>
                    </label>
                  </div>
                </div>
              </div>
              <div style="<?php echo e($config->stripe_payment==1 ? "" : "display: none"); ?>" id="stripe_box" class="row">
                <div class="col-md-6">
                  <div class="form-group<?php echo e($errors->has('STRIPE_KEY') ? ' has-error' : ''); ?>">
                      <?php echo Form::label('STRIPE_KEY', 'STRIPE KEY'); ?>

                      <i class="fa fa-info-circle" data-toggle="tooltip" data-placement="top" title="Please enter stripe key"></i>
                      <?php echo Form::text('STRIPE_KEY', null, ['class' => 'form-control']); ?>


                      <small class="text-danger"><?php echo e($errors->first('STRIPE_KEY')); ?></small>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="search form-group<?php echo e($errors->has('STRIPE_SECRET') ? ' has-error' : ''); ?>">
                      
                          <?php echo Form::label('STRIPE_SECRET', 'STRIPE SECRET KEY'); ?>

                          <i class="fa fa-info-circle" data-toggle="tooltip" data-placement="top" title="Please enter stripe secret key"></i>
                          

                          <input type="password" id="password-field" name="STRIPE_SECRET" value="<?php echo e($env_files['STRIPE_SECRET']); ?>">
                        

                          <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                        

                     

                      <small class="text-danger"><?php echo e($errors->first('STRIPE_SECRET')); ?></small>
                  </div>
                </div>
              </div>
            </div>
            <div  class="payment-gateway-block">
              <div class="form-group">
                <div class="row">
                  <div class="col-xs-6">
                    <?php echo Form::label('paypal_payment', 'PAYPAL PAYMENT'); ?>

                  </div>
                  <div class="col-xs-5 text-right">
                    <label class="switch">
                      <?php echo Form::checkbox('paypal_payment', 1, $config->paypal_payment, ['class' => 'checkbox-switch']); ?>

                      <span class="slider round"></span>
                    </label>
                  </div>
                </div>
              </div>
            <div id="paypal_box" style="<?php echo e($config->paypal_payment==1 ? "" : "display: none"); ?>" id="paypal_box">

              <div class="search form-group<?php echo e($errors->has('PAYPAL_CLIENT_ID') ? ' has-error' : ''); ?>">
                
                 
                    <?php echo Form::label('PAYPAL_CLIENT_ID', 'PAYPAL CLIENT ID'); ?>

                    <i class="fa fa-info-circle" data-toggle="tooltip" data-placement="top" title="Please enter paypal client id"></i>
                    <input type="password" name="PAYPAL_CLIENT_ID" id="pclientid" value="<?php echo e($env_files['PAYPAL_CLIENT_ID']); ?>" class="form-control">
                
                  
                    <span toggle="#pclientid" class="fa fa-fw fa-eye field-icon toggle-password2"></span>
                  
                

                  <small class="text-danger"><?php echo e($errors->first('PAYPAL_CLIENT_ID')); ?></small>
              



              <div class="search form-group<?php echo e($errors->has('PAYPAL_SECRET_ID') ? ' has-error' : ''); ?>">
                
                  
                    <?php echo Form::label('PAYPAL_SECRET_ID', 'PAYPAL SECRET ID'); ?>

                    <i class="fa fa-info-circle" data-toggle="tooltip" data-placement="top" title="Please enter paypal secret id"></i>
                    <input type="password" name="PAYPAL_SECRET_ID" value="<?php echo e($env_files['PAYPAL_SECRET_ID']); ?>" id="paypal_secret" class="form-control">
                 
                 
                      <span toggle="#paypal_secret" class="fa fa-fw fa-eye field-icon toggle-password2"></span>
                    
               

                  <small class="text-danger"><?php echo e($errors->first('PAYPAL_SECRET_ID')); ?></small>
              </div>
              <div class="search form-group<?php echo e($errors->has('PAYPAL_MODE') ? ' has-error' : ''); ?>">
                  <?php echo Form::label('PAYPAL_MODE', 'PAYPAL MODE'); ?>

                  <i class="fa fa-info-circle" data-toggle="tooltip" data-placement="top" title="Please enter paypal mode (sandbox, live)"></i>
                  <?php echo Form::text('PAYPAL_MODE', null, ['class' => 'form-control']); ?>

                  <small class="text-danger"><?php echo e($errors->first('PAYPAL_MODE')); ?></small>
              </div>

            </div>
            </div>
            
          </div>

          <div class="payment-gateway-block">
              <div class="form-group">
                <div class="row">
                  <div class="col-xs-6">
                    <?php echo Form::label('payu_payment', 'PAYU PAYMENT (Indian payment)'); ?>

                  </div>
                  <div class="col-xs-5 text-right">
                    <label class="switch">
                      <?php echo Form::checkbox('payu_payment', 1, $config->payu_payment, ['class' => 'checkbox-switch']); ?>

                      <span class="slider round"></span>
                    </label>
                  </div>
                </div>
              </div>
              <div id="payu_box" style="<?php echo e($config->payu_payment==1 ? "" : "display: none"); ?>" class="row">
                <div class="col-md-6">
                  <div class="form-group<?php echo e($errors->has('PAYU_METHOD') ? ' has-error' : ''); ?>">
                      <?php echo Form::label('PAYU_METHOD', 'PAYU METHOD'); ?>

                      <i class="fa fa-info-circle" data-toggle="tooltip" data-placement="top" title="Please enter payu method test (development) or secure (live)"></i>
                      <?php echo Form::text('PAYU_METHOD', null, ['class' => 'form-control']); ?>

                      <small class="text-danger"><?php echo e($errors->first('PAYU_METHOD')); ?></small>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group<?php echo e($errors->has('PAYU_DEFAULT') ? ' has-error' : ''); ?>">
                      <?php echo Form::label('PAYU_DEFAULT', 'PAYU DEFAULT OPTION'); ?>

                      <i class="fa fa-info-circle" data-toggle="tooltip" data-placement="top" title="Please enter payu default option (payubiz or )"></i>
                      <?php echo Form::text('PAYU_DEFAULT', null, ['class' => 'form-control']); ?>

                      <small class="text-danger"><?php echo e($errors->first('PAYU_DEFAULT')); ?></small>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="search form-group<?php echo e($errors->has('PAYU_MERCHANT_KEY') ? ' has-error' : ''); ?>">
                   
                        <?php echo Form::label('PAYU_MERCHANT_KEY', 'PAYU MERCHANT KEY'); ?>

                        <i class="fa fa-info-circle" data-toggle="tooltip" data-placement="top" title="Please enter payu merchant key"></i>
                        <input id="payum" type="password" class="form-control" name="PAYU_MERCHANT_KEY" value="<?php echo e($env_files['PAYU_MERCHANT_KEY']); ?>">
                     

                     
                        <span toggle="#payum" class="fa fa-fw fa-eye field-icon toggle-password2"></span>
                     

                    

                      <small class="text-danger"><?php echo e($errors->first('PAYU_MERCHANT_KEY')); ?></small>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="search form-group<?php echo e($errors->has('PAYU_MERCHANT_SALT') ? ' has-error' : ''); ?>">
                    
                      
                        <?php echo Form::label('PAYU_MERCHANT_SALT', 'PAYU MERCHANT SALT'); ?>

                        <i class="fa fa-info-circle" data-toggle="tooltip" data-placement="top" title="Please enter payu merchant salt"></i>
                        <input type="password" value="<?php echo e($env_files['PAYU_MERCHANT_SALT']); ?>" name="PAYU_MERCHANT_SALT" id="payusalt" class="form-control">
                     
                        <span toggle="#payusalt" class="fa fa-fw fa-eye field-icon toggle-password2"></span>
                     

                      <small class="text-danger"><?php echo e($errors->first('PAYU_MERCHANT_SALT')); ?></small>
                  
                </div>
              </div>
            </div>

          </div>

          <div class="payment-gateway-block">
              <div class="form-group">
                  <div class="row">
                    <div class="col-xs-6">
                      <?php echo Form::label('paypal_payment', 'PAYTM PAYMENT (Indian Payement Gateway)'); ?>

                    </div>
                    <div class="col-xs-5 text-right">
                      <label class="switch">
                        <?php echo Form::checkbox('paytm_payment', 1, $config->paytm_payment, ['class' => 'checkbox-switch', 'id' => 'paytm_check']); ?>

                        <span class="slider round"></span>
                      </label>
                    </div>
                  </div>
                </div>

                <div id="paytm_box" style="<?php echo e($config->paytm_payment == 1 ? "" : "display:none"); ?>">
                    <div class="form-group">
                        <label>Merchant ID: </label>
                        <i class="fa fa-info-circle" data-toggle="tooltip" data-placement="top" title="Please enter merchant ID"></i>
                        <input type="text" name="PAYTM_MID" value="<?php echo e($env_files['PAYTM_MID']); ?>" class="form-control">
                      </div>
      
                      <div class="form-group">
                          <label>Merchant KEY: </label>
                          <i class="fa fa-info-circle" data-toggle="tooltip" data-placement="top" title="Please enter merchant key"></i>
                          <input type="text" name="PAYTM_MERCHANT_KEY" value="<?php echo e($env_files['PAYTM_MERCHANT_KEY']); ?>" class="form-control">
                      </div>
                </div>
               

               
          </div>

          <div class="payment-gateway-block">

          <div class="api-main-block">
            <h5 class="form-block-heading">Other Apis</h5>
            <div class="row">
              <div class="col-md-12">
                <div class="col-md-6">
                  <div class="search form-group<?php echo e($errors->has('MAILCHIMP_APIKEY') ? ' has-error' : ''); ?>">
                    
                      
                        <?php echo Form::label('MAILCHIMP_APIKEY', 'MAILCHIMP API KEY'); ?>

                        <i class="fa fa-info-circle" data-toggle="tooltip" data-placement="top" title="Please enter mailchimp api key"></i>
                        <input type="password" id="mailc" value="<?php echo e($env_files['MAILCHIMP_APIKEY']); ?>" name="MAILCHIMP_APIKEY" class="form-control">
                     

                     
                        <span toggle="#mailc" class="fa fa-fw fa-eye field-icon toggle-password2"></span>
                     
                   

                      <small class="text-danger"><?php echo e($errors->first('MAILCHIMP_APIKEY')); ?></small>
                  </div>
                <div class="form-group<?php echo e($errors->has('MAILCHIMP_LIST_ID') ? ' has-error' : ''); ?>">
                    <?php echo Form::label('MAILCHIMP_LIST_ID', 'MAILCHIMP LIST ID'); ?>

                    <i class="fa fa-info-circle" data-toggle="tooltip" data-placement="top" title="Please enter mailchimp list id"></i>
                    <?php echo Form::text('MAILCHIMP_LIST_ID', null, ['class' => 'form-control']); ?>



                    <small class="text-danger"><?php echo e($errors->first('MAILCHIMP_LIST_ID')); ?></small>
                </div>
              </div>
              <div class="col-md-6">
                <div class="search form-group<?php echo e($errors->has('TMDB_API_KEY') ? ' has-error' : ''); ?>">
                  
                   
                      <?php echo Form::label('TMDB_API_KEY', 'TMDB API KEY'); ?>

                      <i class="fa fa-info-circle" data-toggle="tooltip" data-placement="top" title="Please enter tmdb api key"></i>
                      <input type="password" id="tmdb_secret" name="TMDB_API_KEY" value="<?php echo e($env_files['TMDB_API_KEY']); ?>" id="tmdb_secret" class="form-control">
                   
                  
                      <span toggle="#tmdb_secret" class="fa fa-fw fa-eye field-icon toggle-password2"></span>
                    
                 

                    <small class="text-danger"><?php echo e($errors->first('TMDB_API_KEY')); ?></small>
                </div>
               </div>
              </div>
            </div>
          </div>
          <div class="btn-group col-xs-12">
            <button type="submit" class="btn btn-block btn-success">Save Settings</button>
          </div>
          <div class="clear-both"></div>
        </div>
      <?php echo Form::close(); ?>

  </div>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('custom-script'); ?>


  <script>


  $(".toggle-password").click(function() {

  $(this).toggleClass("fa-eye fa-eye-slash");
  var input = $($(this).attr("toggle"));
  if (input.attr("type") == "password") {
    input.attr("type", "text");
  } else {
    input.attr("type", "password");
  }
});

$(".toggle-password2").click(function() {

$(this).toggleClass("fa-eye fa-eye-slash");
var input = $($(this).attr("toggle"));
if (input.attr("type") == "password") {
  input.attr("type", "text");
} else {
  input.attr("type", "password");
}
});

  </script>

  <script>
    $('#stripe_payment').on('change',function(){
      if ($('#stripe_payment').is(':checked')){
           $('#stripe_box').show('fast');
        }else{
          $('#stripe_box').hide('fast');
        }
    });   

     $('#paypal_payment').on('change',function(){
      if ($('#paypal_payment').is(':checked')){
           $('#paypal_box').show('fast');
        }else{
          $('#paypal_box').hide('fast');
        }
    });   

      $('#payu_payment').on('change',function(){
      if ($('#payu_payment').is(':checked')){
           $('#payu_box').show('fast');
        }else{
          $('#payu_box').hide('fast');
        }
    });  

    $('#paytm_check').on('change',function(){
      if ($('#paytm_check').is(':checked')){
           $('#paytm_box').show('fast');
        }else{
          $('#paytm_box').hide('fast');
        }
    });   
  </script>




<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.admin', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>