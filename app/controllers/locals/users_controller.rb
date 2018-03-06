class Locals::UsersController < ApplicationController

  def index
   @users = policy_scope(User).order(created_at: :desc)
 end

 def show
  @user = User.find(params[:id])
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
  params.require(:user).permit([:first_name, :last_name, :age, :email, :dedication, :stay, :description, :typeofmusic])

end
end
