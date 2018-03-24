require("minitest/autorun")
require("minitest/rg")
require_relative("../player.rb")

class PlayerTest < MiniTest::Test

  def setup
    @player = Player.new("Kara")
  end

  def test_player_has_name
    assert_equal("Kara", @player.name)
  end

end
