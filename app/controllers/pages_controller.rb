class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index]

  def index
    @events = Event.last(5)
  end

  def create
  end

  def free_event
    @events = Event.where("ticket_price = 0")
  end

  def today_event
    @events = Event.where(date: Date.today)
  end

  def all_event
    @events = Event.all
  end

  def volunteer_event
    @events = Event.where(category: "volunteer")
  end

  def health_event
    @events = Event.where(category: "health")
  end
  
  def course_event
    @events = Event.where(category: "course")
  end

  def theatre_event
    @events = Event.where(category: "theatre")
  end

  def dance_event
    @events = Event.where(category: "dance")
  end

  def workshop_event
    @events = Event.where(category: "workshop")
  end
end
