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

  def test_guess_letter
    @game.guess("t")
    assert_equal(["t"], @game.guessed_letters)
  end

  def test_guess_letter__duplicates_dont_count
    @game.guess("t")
    @game.guess("t")
    assert_equal(["t"], @game.guessed_letters)
  end

  def test_reveal_word
    @game.guess("t")
    assert_equal("t**t", @game.reveal_word)
  end

  def test_game_is_lost__false_at_start
    refute(@game.is_lost?)
  end

end
