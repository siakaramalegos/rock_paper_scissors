module RockPaperScissors
  class Player
    attr_accessor :name

    def initialize(board, player_number = 1)
      @board = board
      @player_number = player_number
    end

  end
end