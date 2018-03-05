class EventsController < ApplicationController

  def index
    @events = Events.all

  end

  def show
    @event = Event.find()
  end

  def new


  end

  def create

  end



end
