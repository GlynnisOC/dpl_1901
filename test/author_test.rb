require './test/test_helper'
require './lib/author'
require './lib/book'

class AuthorTest < Minitest::Test

  def setup
    @nk_jemisin = Author.new({first_name: "N.K.", last_name: "Jemisin"})
  end

  def test_it_exists
    assert_instance_of Author, @nk_jemisin
  end

  def test_author_starts_without_books
    assert_equal [], @nk_jemisin.books
  end

  def test_author_has_written_some_books
    @nk_jemisin.add_book("The Fifth Season", "November 3, 2015")
    @nk_jemisin.add_book("The Hundred Thousand Kingdoms", "2010")
    assert_equal ["The Fifth Season", "November 3, 2015", "The Hundred Thousand Kingdoms", "2010"], @nk_jemisin.books
  end

end
