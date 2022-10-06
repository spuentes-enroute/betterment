class TaskListsController < ApplicationController
  def index
    @task_lists = TaskLists.all
  end

  def new
    # debugger
    @task_list = TaskLists.new
  end

  def create
    @task_list = TaskLists.new(task_list_params)
    @board = Board.find(params[:board_id])
    @task_list.board = @board
    if @task_list.save
      flash[:notice] = "List was created successfully"
      redirect_to @board
    else
      flash[:alert] = "There was an error creating your list."
      render 'new'
    end
  end

  def task_list_params
    params.require(:task_lists).permit(:title)
  end

end
