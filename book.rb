require './rental'

class Book
  attr_accessor :title, :author
  attr_reader :rental

  def initialize(title, author)
    @title = title
    @author = author
    @rental = []
  end

  def add_rental(person, date)
    Rental.new(slef, person, date)
  end
end
