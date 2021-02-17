class UsersController < ApplicationController
    def index 
        users = User.all

        render json: users, include: ["chatrooms", 'messages']
    end

    def show 
        user = User.find(params[:id])

        render json: user, include: ["chatrooms", 'messages']
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end
    
    def create 
        user = User.create(user_params)
        render json: user
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
    end

    
    private
    
    def user_params
        params.permit(:name, :password, :username, :img_url)
    end
end
