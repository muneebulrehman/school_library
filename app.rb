require './book'
require './classroom'
require './nameable'
require './person'
require './rental'
require './student'
require './teacher'

class App
  def initialize()
    @books = []
    @rentals =[]
    @persons = []
  end

  def list_all_books
    p 'No books found.' if @books.empty?
    @books.each {|book| p "Book Title: #{book.title}, Author: #{book.author}" }
  end
   
end