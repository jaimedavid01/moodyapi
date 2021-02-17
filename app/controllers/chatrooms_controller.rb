class ChatroomsController < ApplicationController
    def index 
        chatrooms = Chatroom.all

        render json: chatrooms, include:["messages"]
    end

    def show 
        chatroom = Chatroom.find(params[:id])

        render json: chatroom, include:["messages"]
    end
    
    def create
        @chatroom = Chatroom.create(chatroom_params)

        render json: @chatroom
    end

    private

    def chatroom_params
        params.permit(:user_id, :contact_id, :name)
    end

end
