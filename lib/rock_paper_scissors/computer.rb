module RockPaperScissors

  class Computer < Player

    def initialize(board, player_number)
      super(board, player_number)
      @name = "Skynet"
    end

    def select_move
      move = @board.plays.keys.sample.to_s
      @board.place_move(@player_number, move)
    end

  end

end