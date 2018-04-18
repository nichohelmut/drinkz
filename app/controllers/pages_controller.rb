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
        lng: event.longitude
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end

    @user_markers = @users.map do |user|
    {
      lat: user.latitude,
      lng: user.longitude,

          # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
        }
      end
  end
end
