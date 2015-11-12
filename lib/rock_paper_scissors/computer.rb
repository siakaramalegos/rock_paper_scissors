module RockPaperScissors

  class Computer < Player

    def initialize(board)
      super(board)
      @name = "Skynet"
    end

    def select_move
      @move = VALID_ANSWERS.shuffle.first
    end
  end

end