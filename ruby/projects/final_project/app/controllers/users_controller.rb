# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :set_article, only: %i[show edit update destroy]

  def check_admin
    return if user_signed_in?

    redirect_to root_path, error: 'You are not allowed to access this part of the site'
  end

  def index
    @users = User.all
  end
end
