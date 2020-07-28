require 'uri'
require 'net/http'
require 'json'
require 'pry'

class BookGetter 

    def fetch_url(url)
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        response_body = response.body
        json_response = JSON.parse(response_body)
    end

    def fetchAllBooks
        rubyBooksRaw = fetch_url("https://api.itbook.store/1.0/search/ruby")
        jsBooksRaw = fetch_url("https://api.itbook.store/1.0/search/javascript")
        reactBooksRaw = fetch_url("https://api.itbook.store/1.0/search/react")
        cssBooksRaw = fetch_url("https://api.itbook.store/1.0/search/css")
        reduxBooksRaw = fetch_url("https://api.itbook.store/1.0/search/redux")
        

        rubyBooksArray = rubyBooksRaw["books"]
        jsBooksArray = jsBooksRaw["books"]
        reactBooksArray = reactBooksRaw["books"]
        cssBooksArray = cssBooksRaw["books"]
        reduxBooksArray = reduxBooksRaw["books"]
        

        allBooks = []

        rubyBooksArray.each{|book| allBooks.push(book)}
        jsBooksArray.each{|book| allBooks.push(book)}
        reactBooksArray.each{|book| allBooks.push(book)}
        cssBooksArray.each{|book| allBooks.push(book)}
        reduxBooksArray.each{|book| allBooks.push(book)}
        return allBooks
    end 

end 

BookGetter.new.fetchAllBooks