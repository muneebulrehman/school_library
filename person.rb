require relative './nameable.rb'
class Person < Nameable
  attr_accessor :name, :age

  attr_reader :id

  def initialize(age, name = 'Unknown', parental_permission: true)
    @id = rand(1...1000)
    @name = name
    @age = age
    @parental_permission = parental_permission
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

  private :is_of_age
end
