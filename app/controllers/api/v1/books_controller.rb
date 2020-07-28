require 'json'
require 'uri'
require 'net/http'
# require 'pry'

class Api::V1::BooksController < ApplicationController 

    def index 
        
        rubyBooks = fetch_url("https://api.itbook.store/1.0/search/ruby")
        jsBooks = fetch_url("https://api.itbook.store/1.0/search/javascript")
        reactBooks = fetch_url("https://api.itbook.store/1.0/search/react")
        cssBooks = fetch_url("https://api.itbook.store/1.0/search/css")
        reduxBooks = fetch_url("https://api.itbook.store/1.0/search/redux")
        render json: [rubyBooks, jsBooks, reactBooks, cssBooks, reduxBooks]

    end 

    def show 
        book = fetch_url("https://api.itbook.store/1.0/books/#{params[:id]}")
        render json: book 
    end 

    def fetch_url(url)
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        response_body = response.body
        json_response = JSON.parse(response_body)
    end 


end 
