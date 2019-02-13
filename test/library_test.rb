require './test/test_helper'
require './lib/library'
require './lib/author'

class LibraryTest < Minitest::Test

  def setup
    @nk_jemisin = Author.new({first_name: "N.K.", last_name: "Jemisin"})
    @harper_lee  = Author.new({first_name: "Harper", last_name: "Lee"})
    @dpl = Library.new
    @fifth_season = @nk_jemisin.add_book("The Fifth Season", "November 3, 2015")
    @kingdoms = @nk_jemisin.add_book("The Hundred Thousand Kingdoms", "2010")
    @mockingbird = @harper_lee.add_book("To Kill a Mockingbird", "July 11, 1960")
  end

  def test_it_exists
    assert_instance_of Library, @dpl
  end

  def test_library_starts_without_books
    assert_equal [], @dpl.books
  end

  def test_books_are_added_to_library
    @dpl.add_to_collection(@fifth_season)
    @dpl.add_to_collection(@kingdoms)
    @dpl.add_to_collection(@mockingbird)
    assert_equal [@fifth_season, @kingdoms, @mockingbird], @dpl.books
  end

  def test_does_library_have_a_book
    assert_equal true, @dpl.include?("To Kill a Mockingbird")
  end

  def test_library_does_not_have_book
    assert_equal false, @dpl.include?("A Connecticut Yankee in King Arthur's Court")
  end 


end
