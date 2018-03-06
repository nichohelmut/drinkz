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
  @request = Request.create(request_params)
  @request.event = Event.find(params[:event_id])
  @request.user = current_user

  authorize @request
  if @request.save
    redirect_to visitors_event_requests(@request.event)
  else
    render :new
  end
end

private

def request_params
  params.require(:request).permit(:event_id, :user_id, :status)
end

end




