class Locals::RequestsController < ApplicationController
  def index
   @requests = policy_scope(Request).order(created_at: :desc)
   @event = Event.find(params[:id])
 end

  def show
    @request = Request.find(params[:id])
    authorize @request
  end

  def new
    @request = Request.new
    @event = Event.find(params[:event_id])
    authorize @request
  end

  def create
    @request = Request.new
    @user = User.find(request_params[:user_id])
    @request.user = @user
    @event = Event.find(params[:event_id])
    @request.event = @event
    authorize @request
    if @request.save
      redirect_to locals_request_messages_path(@request) # index messages for this specific event
    else
      render "users/show"
    end
  end

  private

  def request_params
    params.require(:request).permit(:user_id)
  end

end




