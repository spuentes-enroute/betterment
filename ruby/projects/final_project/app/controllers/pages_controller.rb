# frozen_string_literal: true

class PagesController < ApplicationController
  def home
    @team = current_user.team
  end
end
