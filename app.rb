require './book'
require './classroom'
require './nameable'
require './person'
require './rental'
require './student'
require './teacher'

class App
  def initialize()
    @books = []
    @rentals =[]
    @people = []
  end

  def list_all_books
    return p 'No books found.' if @books.empty?
    @books.each {|book| p "Book Title: #{book.title}, Author: #{book.author}" }
  end

  def list_all_people
     return p 'No people found.' if @books.empty?
      @people.each {|person| p "Name: #{person.name}, Age: #{person.age} " }
  end

  def create_person
    puts "Do you want to create a student (1) or a teacher (2)? [Input the number]:"
    option = gets.chomp

    case option
    when '1'
      create_student
    when '2'
      create_teacher
    else
      p "Enter the valid number"
    end
  end 

  def create_student
    print "Age: "
    age = gets.chomp.to_i
    print "Name: "
    name = gets.chomp.to_s
    print "Has parent permission? [Y/N]: "
    parental_permission = gets.chomp.downcase
    case permission
    when 'n'
      Student.new('classroom', age, name, parental_permission: false)
      @people << student
    when 'y'
      Student.new('classroom', age, name, parental_permission: true)
      @people << student
    end
    p "Student created successfully"
  end

end