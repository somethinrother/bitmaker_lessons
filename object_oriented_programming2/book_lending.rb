require 'pry'

class Books
  # # Class Variables
  @@on_shelf = []
  @@on_loan = []

  # # Instance Variables
  def initialize(title, author, isbn)
    @title = title
    @author = author
    @isbn = isbn
    @due_date = nil
  end

  # # Instance Methods

  def due_date
    @due_date
  end

  def due_date=(due_date)
    @due_date = due_date
  end

  def borrow
    return false if lent_out?
    Books.available.delete(self)
    Books.borrowed << self
    @due_date = Books.current_due_date
  end

  def return_to_library
    return false if !lent_out?
    Books.borrowed.delete(self)
    Books.available << self
    @due_date = nil
  end

  def lent_out?
    due_date != nil
  end

  # # Class Methods

  def self.create(title, author, isbn)
    book = Books.new(title, author, isbn)
    @@on_shelf << book
    book
  end

  def self.current_due_date
    Time.now + 60
  end

  def self.overdue_books
    result = []
    Books.borrowed.each do |book|
      if book.due_date < Time.now
        result << book
      end
    end
    result
  end

  def self.browse
    puts Books.available.sample.inspect
  end

  def self.available
    @@on_shelf
  end

  def self.borrowed
    @@on_loan
  end

end

house_of_leaves = Books.create("House of Leaves", "Mark Z. Danielewski", "9782757849101")
snowcrash = Books.create("Snowcrash", "Neal Stephenson", "9174950684938")
imperialism = Books.create("Imperialism", "Vladimir Lenin", "9102478594823")
another_roadside_attraction = Books.create("Another Roadside Attraction", "Tom Robbins", "9384759375961")

binding.pry
