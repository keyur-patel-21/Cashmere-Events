class PagesController < ApplicationController
  def index
    @events = Event.all
  end
end
