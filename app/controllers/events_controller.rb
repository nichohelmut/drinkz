class EventsController < ApplicationController

  def index
    @events = policy_scope(Event).order(created_at: :desc)

  end

  def show
    @event = Event.find(params[:id])
    authorize @event
  end

  def new
    @event = Event.new
    authorize @event

  end

  def create
    @event = Event.new(event_params)
    authorize @event
    @event.user = current_user
    if @event.save
      redirect_to event_path(@event)
    else
      :new
    end

  end

  private
  def event_params
    params.require(:event).permit([:location_name, :location_address,:event_description, :time, :user])

  end



end
