require relative './person.rb'
class Student < Person

  attr_accessor :classroom

  def initialize(classroom, name, age, can_use_services)
    super(name, age, can_use_services)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

end

