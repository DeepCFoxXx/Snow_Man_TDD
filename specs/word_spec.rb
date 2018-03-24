require("minitest/autorun")
require("minitest/rg")
require_relative("../word.rb")

class WordTest < MiniTest::Test

  def setup
    @word = Word.new("test")
  end

  def test_is_hidden
    assert_equal("****", @word.display)
  end

  def test_word_includes_letter
    assert(@word.include?('t'))
  end

  def test_reveals_letters
    revealed_t = @word.display(['t'])
    assert_equal("t**t", revealed_t)
  end

end
