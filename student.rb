require './person'
class Student < Person
  attr_reader :classroom

  def initialize(classroom, name, age, parental_permission:true)
    super(name, age, parental_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
