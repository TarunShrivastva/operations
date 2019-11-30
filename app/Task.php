<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Task extends Model
{
    use SoftDeletes;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'title', 'description', 'created_by', 'status', 'task_state_id'
    ];

    protected $table = 'tasks';

    /**
     * The collegues that belong to the task.
     */
    public function collegues()
    {
        return $this->belongsToMany('App\Collegues');
    }

    /**
     * The collegues that belong to the task.
     */
    public function parents()
    {
        return $this->hasOne(Task::class,'id','parent_id');
    }

    /**
     * The state that belong to the task.
     */
    public function states()
    {
        return $this->belongsTo('App\TaskState','task_state_id');
    }
}