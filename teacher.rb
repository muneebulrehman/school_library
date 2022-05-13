require './person'
class Teacher < Person
  attr_accessor :specialization

  def initialize(specialization, name, age, parental_permission: true)
    super(name, age, parental_permission: parental_permission)
    @specialization = specialization
  end

  def can_use_services
    true
  end
end
