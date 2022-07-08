class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index]

  def index
    @events = Event.all
  end

  def create
  end
end
