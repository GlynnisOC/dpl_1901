class Library
  attr_reader :books
  def initialize
    @books = [] #this doesn't seem like SRP (as books is included in the author class), please correct me if I'm wrong!
  end

  def add_to_collection(book_info)
    @books << book_info
  end

  def include?(book_title)
    @books.any? do |book_title|
      book.title == book_title
    end
  end

end
