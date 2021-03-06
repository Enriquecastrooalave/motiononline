<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;

class Episode extends Model
{
    use HasTranslations;

    public $translatable = ['detail'];

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
      'seasons_id',
      'episode_no',
      'title',
      'tmdb',
      'tmdb_id',
      'a_language',
      'subtitle',
      'subtitle_list',
      'subtitle_files',
      'duration',
      'detail',
      'released',
      'type'
    ];

    public function seasons() {
      return $this->belongsTo('App\Season', 'seasons_id');
    }

    public function video_link()
    {
      return $this->hasOne('App\Videolink');
    }

    public function subtitles()
    {
      return $this->hasMany('App\Subtitles','m_t_id');
    }
}
