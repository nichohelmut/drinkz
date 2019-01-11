# frozen_string_literal: true

class Locals::MessagesController < ApplicationController
  skip_after_action :verify_policy_scoped, only: :index
  def index
    # retrieving all messages
    # @messages = policy_scope(Message).order(created_at: :desc)
    # retireving the request from the params
    @request = Request.find(params[:request_id])
    @messages = @request.messages
    # initializing a new instance of Message for the input
    @message = Message.new(request: @request)
    # authorize @message
  end

  def new
    @message = Message.new
    @user = User.find(params[:user_id])
    authorize @message
  end

  def create
    # initialiye a new instance of Message with the strong params (title, body)
    @message = Message.new(message_params)
    # retrieve the request from the params
    @request = Request.find(params[:request_id])
    # assign the request to the message
    @message.request_id = @request.id
    # assign the current user as the sender of the message
    @message.user_id = current_user.id
    authorize @message
    if @message.save
      redirect_to locals_request_messages_path(@request.id)
    else
      render :new
    end
    end

  private

  def message_params
    params.require(:message).permit(:title, :body)
  end
    end
