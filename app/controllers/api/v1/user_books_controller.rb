class Api::V1::UserBooksController < ApplicationController 

    def index  
        userbooks = UserBook.all 
        render json: userbooks 
    end 

    def new 

    def create
        userbook = UserBook.create!(user_book_params)
        render json: userbook
    end 

    def destroy
        userbook = UserBook.find(params[:id])
        userbook.destroy!
        render json: {}
    end

    private 

    def user_book_params
        params.require(:user_book).permit!
    end 

end 