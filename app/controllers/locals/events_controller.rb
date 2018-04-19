class Locals::EventsController < ApplicationController

  def index
    @events = policy_scope(Event).order(created_at: :desc)
    @events = Event.where.not(latitude: nil, longitude: nil)



    @markers = @events.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        # we get each event id through interpolating
        url: "/locals/events/#{event.id}",
        icon: {
          url: "https://image.flaticon.com/icons/svg/235/235881.svg",
          scaledSize: {
            height: 40,
            width: 40
          }
        }
        #infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end

    @users = policy_scope(User).order(created_at: :desc)
    @users = User.where.not(latitude: nil, longitude: nil)
    # @event = Event.find(params[:id])

        @usermarkers = @users.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        # url: "/visitors/events/#{@event.id}/users/#{user.id}",
        icon: {
          url: "https://image.flaticon.com/icons/svg/808/808297.svg",
          scaledSize: {
            height: 40,
            width: 40
          }
        }
        # url: "/visitors/events/#{@event.id}/users/#{user.id}"

          # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
        }
      end

    #
    end

    def show
      @event = Event.find(params[:id])
      # @event.user = current_user
      @events = Event.where.not(latitude: nil, longitude: nil)
      @markers =
      [{
        lat: @event.latitude,
        lng: @event.longitude,
        url: "/locals/events/#{@event.id}",
        icon: {
          url: "https://image.flaticon.com/icons/svg/235/235881.svg",
          scaledSize: {
            height: 40,
            width: 40
          }
        }
        }]


        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
        authorize @event

      end

      def new
        @event = Event.new
        authorize @event
      end

      def create
        @event = Event.create(event_params)
        authorize @event
        @event.user = current_user
        if @event.save
          redirect_to locals_event_path(@event)
        else
         :new
       end
     end

     def destroy
      @event = Event.find(params[:id])
      @event.destroy
      redirect_to locals_events_path
    end

    private
    def event_params
      params.require(:event).permit([:id, :location_name, :location_address,:event_description, :event_picture, :time, :user])
    end
  end
