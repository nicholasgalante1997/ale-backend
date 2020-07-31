class Api::V1::UsersController < ApplicationController 
    def index 
        users = User.all 
        render json: users, include: [:user_books, :comments]
    end 

    def show 
        user = User.find(params[:id])
        render json: user, include: [:user_books, :comments] 
    end 

    def create
        user = User.create!(user_params)
        render json: user
    end 

    def update
        user = User.find(params[:id])
        user.update!(user_params)
        render json: user
    end

    private 

    def user_params
        params.require(:user).permit(:username, :password, :interests)
    end

end 