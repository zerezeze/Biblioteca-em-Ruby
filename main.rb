# main.rb
require_relative 'library'
require_relative 'book'

library = Library.new

loop do
  puts "Library Menu"
  puts "1. Add a book"
  puts "2. List all books"
  puts "3. Find a book by title"
  puts "4. Exit"
  print "Choose an option: "
  choice = gets.chomp.to_i

  case choice
  when 1
    print "Enter the book title: "
    title = gets.chomp
    print "Enter the book author: "
    author = gets.chomp
    book = Book.new(title, author)
    library.add_book(book)
    puts "Book added successfully!"
  when 2
    puts "Listing all books:"
    library.list_books
  when 3
    print "Enter the book title to search: "
    title = gets.chomp
    puts library.find_book_by_title(title)
  when 4
    puts "Goodbye!"
    break
  else
    puts "Invalid option. Please try again."
  end
end
