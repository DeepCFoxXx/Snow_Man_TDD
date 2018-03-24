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

end
