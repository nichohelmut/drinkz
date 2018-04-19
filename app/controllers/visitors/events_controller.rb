class Visitors::EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @events = policy_scope(Event).order(created_at: :desc)

    @events = Event.where.not(latitude: nil, longitude: nil)

    @markers = @events.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        url: "/visitors/events/#{event.id}",
        icon: {
          url: "https://image.flaticon.com/icons/svg/235/235881.svg",
          scaledSize: {
            height: 40,
            width: 40
          }
        }

        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end

  def show
    @event = Event.find(params[:id])
    # @event.user = current_user
    authorize @event
    @request = Request.where(user: current_user, event: @event).first
    # @user = @request.status
    # @user = @user.id
    @events = Event.where.not(latitude: nil, longitude: nil)
      @markers =
    [{
      lat: @event.latitude,
      lng: @event.longitude,
      url: "/visitors/events/#{@event.id}",
      icon: {
          url: "https://image.flaticon.com/icons/svg/235/235881.svg",
          scaledSize: {
            height: 40,
            width: 40
          }
        }
      }]

  end
end
#   def new
#     @event = Event.new
#     authorize @event

#   end

#   def create
#     @event = Event.create(event_params)
#     authorize @event
#     @event.user = current_user
#     if @event.save
#       redirect_to locals_event_path(@event)
#     else
#      :new
#    end

#  end

#  private
#  def event_params
#   params.require(:event).permit([:location_name, :location_address,:event_description, :time, :user])
# end
