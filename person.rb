require './nameable'

class Person < Nameable
  attr_accessor :name, :age

  attr_reader :id, :rentals, :parental_permission

  def initialize(age, name = 'Unknown', parental_permission: true)
    super()
    @id = rand(1...1000)
    @name = name
    @age = age
    @parental_permission = parental_permission
    @rentals = []
  end

  def correct_name
    @name
  end

  def of_age?
    @age > 18
  end

  def can_use_services?
    @parental_permission || of_age?
  end

  def add_rental(book, date)
    Rental.new(self, book, date)
  end

  private :of_age?
end
