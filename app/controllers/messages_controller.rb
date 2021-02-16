class MessagesController < ApplicationController
    def index 
        messages = Message.all

        render json: messages
    end


    def show
        message = Message.find(params[:id])

        render json: message
    end

    def create
        @message = Message.create(message_params)
        render json: @message
    end

    private
    
    def message_params
        params.permit(:user_id, :chatroom_id, :text)
    end
end
