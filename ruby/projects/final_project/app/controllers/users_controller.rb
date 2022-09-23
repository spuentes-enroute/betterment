class UsersController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end
end
