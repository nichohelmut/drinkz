class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @events = policy_scope(Event).order(created_at: :desc)

    @events = Event.where.not(latitude: nil, longitude: nil)

    @users = policy_scope(User).order(created_at: :desc)
   @users = User.where.not(latitude: nil, longitude: nil)

    @markers = @events.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude,
        url: "/",
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

    @usermarkers = @users.map do |user|
    {
      lat: user.latitude,
      lng: user.longitude,
      icon: {
          url: "https://image.flaticon.com/icons/svg/808/808297.svg",
          scaledSize: {
            height: 40,
            width: 40
          }
        }

          # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
        }
      end
  end
end
