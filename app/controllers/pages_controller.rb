class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index]

  def index
    @events = Event.all
  end

  def create
  end

  def free_event
    @events = Event.where("ticket_price = 0")
  end

  def today_event
    @events = Event.where(date: Date.today)
  end
end
