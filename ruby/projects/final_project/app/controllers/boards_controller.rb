# frozen_string_literal: true

class BoardsController < ApplicationController
  before_action :set_board, only: [:edit, :update]
  def index
    @boards = Board.all
    @teams = Team.all
  end

  def update
    if @board.update(board_params)
      flash[:notice] = "Article was updated successfully"
      redirect_to @board
    else
      render 'edit'
    end
  end

  def edit; end

  def new; end

  def create; end

  def show
    @board = Board.find(params[:id])
  end

  private


  def set_board
    @board = Board.find(params[:id])
  end

  def board_params
    params.require(:board).permit(:title)
  end
end
