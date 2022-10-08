# frozen_string_literal: true

class TasksController < ApplicationController
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @board = Board.find(params[:board_id])
    @task.task_lists_id = params[:task_list_id]
    if @task.save
      flash[:notice] = 'Task was created successfully'
      redirect_to @board
    else
      flash[:alert] = 'There was an error creating your task.'
      render 'new'
    end
  end

  def task_params
    params.require(:task).permit(:title)
  end
end
