class Rental
  attr_accessor :date

  def initialize(date, book, person)
    @date = date
    @person = person
    @person.rentals << self
    @book = book
    @book.rentals << self
  end

  def show_rental
    "#{@person.name} #{@book.title}  #{date}"
  end
end
