require relative './person.rb'
class Teacher < Person
  attr_accessor :specialization

  def initialize(specialization, name, age, parental_permission)
    super(name, age, parental_permission)
    @specialization = specialization
  end

  def can_use_services
    true
  end
end
