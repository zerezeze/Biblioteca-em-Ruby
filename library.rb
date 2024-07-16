# library.rb
require_relative 'book'

class Library
  def initialize
    @books = []
  end

  def add_book(book)
    @books << book
  end

  def list_books
    @books.each { |book| puts book }
  end

  def find_book_by_title(title)
    book = @books.find { |b| b.title.downcase == title.downcase }
    book ? book.to_s : "Book not found"
  end
end
