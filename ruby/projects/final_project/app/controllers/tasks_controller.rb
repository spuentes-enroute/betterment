# frozen_string_literal: true

class TasksController < ApplicationController
  def new
    @task = Tasks.new(params[:board_id], params[:task_list_id])
  end

  def create
    @task_list = Tasks.new(task_params)
  end

  def task_params
    params.require(:tasks).permit(:title)
  end
end
