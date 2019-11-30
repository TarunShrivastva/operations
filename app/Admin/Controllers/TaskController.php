<?php

namespace App\Admin\Controllers;

use App\Task;
use App\TaskState;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;
use Auth;

class TaskController extends Controller
{
    use ModelForm;

    /**
     * Index interface.
     *
     * @return Content
     */
    public function index()
    {
        return Admin::content(function (Content $content) {

            $content->header('Task');
            $content->description('List');

            $content->body($this->grid());
        });
    }

    /**
     * Edit interface.
     *
     * @param $id
     * @return Content
     */
    public function edit($id)
    {
        return Admin::content(function (Content $content) use ($id) {

            $content->header('Task');
            $content->description('List');

            $content->body($this->form()->edit($id));
        });
    }

    /**
     * Create interface.
     *
     * @return Content
     */
    public function create()
    {
        return Admin::content(function (Content $content) {

            $content->header('Task');
            $content->description('List');

            $content->body($this->form());
        });
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Admin::grid(Task::class, function (Grid $grid) {
            $grid->model()->orderBy('id', 'ASC');
            $grid->id('ID')->sortable();
            $grid->title('Task')->limit(20);
            $grid->parents()->title('Parent Task');
            $grid->states()->state('Task State');
            $grid->created_at();
            $grid->updated_at();
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(Task::class, function (Form $form) {
            $users = Auth::guard('admin')->user();
            $form->display('id', 'ID');
            $form->text('title','Title')->rules('required|min:3|unique:tasks,title,NULL,id,deleted_at,NULL');
            $form->textarea('description','Description')->rules('required|min:3');
            $form->select('created_by','Created By')->options([$users->id => $users->name])->rules('required');
            $form->select('task_state_id','Task State')->options(TaskState::get()->pluck('state','id')->toArray());
            $form->select('parent_id','Parent Task')->options(array_merge([0 => 'Select Parent Task'],Task::get()->pluck('title','id')->toArray()))->rules('required');
            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');
        });


        
    }
}