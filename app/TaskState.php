<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class TaskState extends Model
{
    use SoftDeletes;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
    	'state'
    ];

    protected $table = 'task_states';

    /**
     * The collegues that belong to the task.
     */
    public function tasks()
    {
        return $this->hasMany('App\Task');
    }
}