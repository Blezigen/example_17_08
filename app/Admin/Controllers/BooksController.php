<?php

namespace App\Admin\Controllers;

use App\Author;
use App\Book;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class BooksController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Book';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Book());

        $grid->column('id', __('Id'));
        $grid->author()->display(function($v) {
            return $v['name'];
        });
        $grid->column('title', __('Title'));
        $grid->column('description', __('Description'));
        $grid->column('year', __('Year'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Book::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('author_id', __('Author id'));
        $show->field('title', __('Title'));
        $show->field('description', __('Description'));
        $show->field('year', __('Year'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Book());

        $form->select('author_id', __('Author id'))
            ->options(collect(Author::all())->mapWithKeys(function ($v){
                return [$v->id => $v->name];
            }));

        $form->text('title', __('Title'));
        $form->textarea('description', __('Description'));
        $form->text('year', __('Year'));

        return $form;
    }
}
