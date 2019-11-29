<?php

namespace App\Admin\Controllers;

use App\Task;

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
            $states = [
                '1'  => ['value' => 1, 'text' => 'YES', 'color' => 'primary'],
                '0' => ['value' => 0, 'text' => 'NO', 'color' => 'default'],
            ];    
            $grid->model()->orderBy('id', 'DESC');
            $grid->id('ID')->sortable();
            $grid->title('Title')->limit(20);
            $grid->parent_id('Parent Id');
            $grid->status('status')->switch($states);
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
            $form->text('title','Title')->rules('required|min:3');
            $form->textarea('description','Description')->rules('required|min:3');
            $form->select('created_by','Created By')->options([$users->id => $users->name])->rules('required');
            $form->select('parent_id','Parent Task')->options(array_merge([0 => 'Select Paraent Task'],Task::where('id','<>',$users->id)->get()->pluck('title','id')->toArray()))->rules('required');
            $form->switch('status','Status')->rules('required');
            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');
        });


        
    }
}
