require relative './person.rb'
class Student < Person
  attr_accessor :classroom

  def initialize(classroom, name, age, parental_permission)
    super(name, age, parental_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
