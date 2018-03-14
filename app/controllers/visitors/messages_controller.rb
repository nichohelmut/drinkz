class Visitors::MessagesController < ApplicationController
  def index
      # retireving the request from the params
      #@request = Request.find(params[:request_id])
      @request = Request.where(user: current_user, event: @event)
      # retrieving all messages
      @messages = policy_scope(Message).where(request_id: @request.ids).order(created_at: :desc)


      # initializing a new instance of Message for the input
      @message = Message.new(request: @request)
      authorize @message
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
        @message.request = @request
        # assign the current user as the sender of the message
        @message.user = current_user
        authorize @message
        if @message.save
          redirect_to visitors_request_messages_path(@request.id)
        else
          render :new
        end
      end

      private

      def message_params
        params.require(:message).permit(:title, :body)
      end
    end
