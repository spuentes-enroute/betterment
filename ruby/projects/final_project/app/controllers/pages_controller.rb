class PagesController < ApplicationController
  def home
    @team = current_user.team
    @boards = current_user.team.boards
  end
end
