# frozen_string_literal: true

class PagesController < ApplicationController
  def home
    @team = current_user.team # what if there is no current user?
    # it is still the home page. why do you need
    # to be signed in?
  end
end
