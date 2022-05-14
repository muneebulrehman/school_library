require './book'
require './classroom'
require './nameable'
require './person'
require './rental'
require './student'
require './teacher'

class App
  attr_reader :rentals

  def initialize()
    @books = []
    @rentals = []
    @people = []
  end

  def list_all_books
    return p 'No books found.' if @books.empty?

    @books.each { |book| p "Book Title: #{book.title}, Author: #{book.author}" }
  end

  def list_all_people
    return p 'No people found.' if @people.empty?

    @people.each { |person| p "Name: #{person.name}, Age: #{person.age} " }
  end

  def create_person
    puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]:'
    option = gets.chomp

    case option
    when '1'
      create_student
    when '2'
      create_teacher
    else
      p 'Enter the valid number'
    end
  end

  def create_student
    print 'Age: '
    age = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp.to_s
    print 'Has parent permission? [Y/N]: '
    parental_permission = gets.chomp.downcase
    case parental_permission
    when 'n'
      student = Student.new('classroom', age, name, parental_permission: false)
      @people << student
    when 'y'
      student = Student.new('classroom', age, name, parental_permission: true)
      @people << student
    end
    p 'Student created successfully'
  end

  def create_teacher
    print 'Enter name of teacher: '
    name = gets.chomp.to_s
    print 'Enter age: '
    age = gets.chomp.to_i
    print 'Enter Specialization: '
    specialization = gets.chomp.to_s
    teacher = Teacher.new(specialization, age, name)
    @people << teacher
    p 'Teacher created successfully'
  end

  def create_book
    p 'To create a new book, Enter: '
    print 'Title: '
    title = gets.chomp.to_s
    print 'Enter the Author name: '
    author = gets.chomp.to_s
    book = Book.new(title, author)
    @books << book
    puts 'Book created successfully'
  end

  def create_rental
    p 'Select a book from the following list by number: '
    @books.each_with_index { |book, index| puts "#{index}) Title: #{book.title}, Author: #{book.author}" }
    book_id = gets.chomp.to_i

    puts 'Select a person from the following list by number'
    @people.each_with_index do |person, index|
      puts "#{index}) [#{person.class.name}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
    person_id = gets.chomp.to_i

    print 'Date: '
    date = gets.chomp

    rental = Rental.new(date, @books[book_id], @people[person_id])
    @rentals << rental
  end

  def list_all_rentals
    print 'ID of the person: '
    id = gets.chomp.to_i
    # pp @rentals
    puts 'Rentals: '
    @rentals.each do |rental|
      if rental.person.id == id
        puts "Peson: #{rental.person.name}  Date: #{rental.date}, Book: '#{rental.book.title}' by #{rental.book.author}"
      else
        p 'No record found for the selected person'
      end
    end
  end
end
