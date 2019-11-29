<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Collegues extends Model
{
    use SoftDeletes;
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'address'
    ];

    protected $table = 'collegues';

    /**
     * The task that belong to the collegues.
     */
    public function tasks()
    {
        return $this->belongsToMany('App\Task');
    }
}
