require("minitest/autorun")
require("minitest/rg")
require_relative("../game.rb")
require_relative("../word.rb")
require_relative("../player.rb")

class GameTest < MiniTest::Test

  def setup
    word = Word.new("test")
    player = Player.new("Kara")
    @game = Game.new(word, player)
  end

  def test_guessed_letters_starts_empty
    assert_equal([], @game.guessed_letters)
  end

end
