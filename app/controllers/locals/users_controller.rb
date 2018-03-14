class Locals::UsersController < ApplicationController

    def index
     @users = policy_scope(User).order(created_at: :desc)
     @event = Event.find(params[:event_id])
     @users = User.where.not(latitude: nil, longitude: nil)


     @markers = @users.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude#,
          # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
        }
      end
    end

    def show
    # raise
    @event = Event.find(params[:event_id])
    @user = User.find(params[:id])
    @request = @event.requests.find_by_user_id(@user.id) #instance or nil
    authorize @user

  end

  def new
    @user = User.new
    authorize @user
  end

  def create
    @user = User.create(user_params)
    authorize @user
    if @user.save
      redirect_to user_events_path
    else
      :new
    end
  end



  private

  def user_params
    params.require(:user).permit([:first_name, :age, :email, :dedication])

  end
end

    #params.require(:user).permit([:first_name, :last_name, :age, :email, :dedication, :stay, :description, :typeofmusic])

