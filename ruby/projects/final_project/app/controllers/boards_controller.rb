# frozen_string_literal: true

class BoardsController < ApplicationController
  def index
    @boards = Board.all
    @teams = Team.all
  end

  def new; end

  def create; end

  def show
    @board = Board.find(params[:id])
  end
end
