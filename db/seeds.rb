# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'
# require_relative './BookGetter.rb'

# User.destroy_all 
# UserBook.destroy_all 

# numArray = [1, 101, 111, 1011]

# 50.times do 
#     User.create(username: ((Faker::TvShows::RickAndMorty.character).gsub(/\s+/, "") + "#{numArray.sample}"), password: Faker::TvShows::RickAndMorty.location, interests: ["Ruby", "Ruby on Rails", "React", "Javascript"].sample )
# end 

# a = BookGetter.new 
# books = a.fetchAllBooks

# books.map{|book| Book.create!(title: book[:title], subtitle: book[:subtitle], price: book[:price], isbn13: book[:isbn13], url: book[:url], image: book[:image], genre: nil)}


# 50.times do 
#     book = Book.all.sample
#     UserBook.create(user_id: User.all.sample.id, book_id: book[:id], been_read: false, favorite: false)
# end 



# puts "Done"