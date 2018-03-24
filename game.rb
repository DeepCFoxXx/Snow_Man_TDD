class Game

  attr_reader :guessed_letters

  def initialize(word, player)
    @word = word
    @player = player
    @guessed_letters = []
  end

end 
