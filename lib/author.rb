class Author
  attr_reader :first_name, :last_name, :books

  def initialize(author_info)
    @first_name = author_info[:first_name]
    @last_name = author_info[:last_name]
    @books = []
  end

  def add_book(title, publication_date)
    @books << title
    @books << publication_date
  end
end
