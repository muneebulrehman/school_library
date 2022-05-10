require './nameable.rb'
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

  private :of_age?
end

person = Person.new(22, 'maximilianus')
p person.correct_name
capitalizedPerson = CapitalizeDecorator.new(person)
p capitalizedPerson.correct_name
capitalizedTrimmedPerson = TrimmerDecorator.new(capitalizedPerson)
p capitalizedTrimmedPerson.correct_name