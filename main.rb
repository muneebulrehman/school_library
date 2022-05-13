require './app'

class Main << App
  def initialize
    @app = App.new
    start_script()
  end

  def start_script
    puts 'Select Option'
    10.times{print  "*="}
    puts
    puts '[1] List all books'
    puts '[2] List all people'
    puts '[3] Create a person'
    puts '[4] Create a book'
    puts '[5] Create a rental'
    puts '[6] List all rentals for a given person'
    puts '[7] Exit'
  end

  def options (input)
    case input
    when '1'
      app.list_all_books
    when '2'
      app.list_all_people
    when '3'
      app.create_person
    when '4'
      app.create_book
    when '5'
      app.create_rental
    when '6'
      app.list_all_rentals
    when '7'
      puts "Thank you for using this app!"
      break
    else
      puts 'Please enter a num between 1 and 7.'
  end
end

main = Main.new
