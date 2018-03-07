  class Locals::MessagesController < ApplicationController
    def index
      @messages = policy_scope(Message).order(created_at: :desc)
    end

    def new
      @message = Message.new
      @user = User.find(params[:user_id])
      authorize @message
    end

    def create
        # raise
        @message = Message.new(message_params)
        @message.user_id = current_user.id
        authorize @message
        if @message.save
          redirect_to locals_user_messages_path
        else
          render :new
        end
      end

      private

      def message_params
        params.require(:message).permit(:title, :body, :user_id, :request_id)
      end

    end
