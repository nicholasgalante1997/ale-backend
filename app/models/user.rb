class User < ApplicationRecord
    has_many :user_books
    has_many :comments, through: :user_books 
end
