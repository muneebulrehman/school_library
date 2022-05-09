class Person 
  attr_accessor :name, :age
  attr_reader :id
  def initialize(name='Unknown',age, parental_permission: true)
    @id = rand(1...1000)
    @name = name
    @age = age
    @parental_permission = parental_permission
  end

  def is_of_age
    @age > 18
  end

  def can_use_services?
    @parental_permission || is_of_age
  end

  private :is_of_age

end


