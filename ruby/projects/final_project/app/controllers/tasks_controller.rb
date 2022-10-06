class TasksController < ApplicationController
  def new
    debugger
    @task = Tasks.new(params[:board_id], params[:task_list_id])
  end

  def create
    @task_list = Tasks.new(task_params)
  end

  def task_params
    params.require(:tasks).permit(:title)
  end
end
