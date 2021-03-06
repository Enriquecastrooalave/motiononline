<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;

class Config extends Model
{
    use HasTranslations;
    
    public $translatable = ['title', 'invoice_add', 'terms_condition', 'privacy_pol', 'refund_pol', 'copyright'];

    /**
     * Convert the model instance to an array.
     *
     * @return array
     */
    public function toArray()
    {
      $attributes = parent::toArray();
      
      foreach ($this->getTranslatableAttributes() as $name) {
          $attributes[$name] = $this->getTranslation($name, app()->getLocale());
      }
      
      return $attributes;
    }  

    protected $fillable = [
      'logo',
      'w_name',
      'wel_eml',
      'title',
      'favicon',
      'w_email',
      'stripe_pub_key',
      'stripe_secret_key',
      'paypal_mar_email',
      'currency_code',
      'currency_symbol',
      'invoice_add',
      'terms_condition',
      'privacy_pol',
      'refund_pol',
      'prime_main_slider',
      'prime_genre_slider',
      'prime_footer',
      'prime_movie_single',
      'copyright',
      'stripe_payment',
      'paypal_payment',
      'payu_payment',
      'paytm_payment',
      'preloader',
      'inspect',
      'rightclick',
      'goto',
      'inspect',
      'color'
    ];
}
