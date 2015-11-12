module RockPaperScissors
  class Board
    attr_reader :plays, :player_moves

    @@wins = [
          {pair: ['r', 's'], phrase: 'Rock crushes Scissors.'},
          {pair: ['r', 'l'], phrase: 'Rock crushes Lizard.'},
          {pair: ['p', 'r'], phrase: 'Paper covers Rock.'},
          {pair: ['p', 'sp'], phrase: 'Paper disproves Spock.'},
          {pair: ['s', 'p'], phrase: 'Scissors cut Paper.'},
          {pair: ['s', 'l'], phrase: 'Scissors decapitate Lizard.'},
          {pair: ['l', 'sp'], phrase: 'Lizard poisons Spock.'},
          {pair: ['l', 'p'], phrase: 'Lizard eats Paper.'},
          {pair: ['sp', 's'], phrase: 'Spock smashes Scissors.'},
          {pair: ['sp', 'r'], phrase: 'Spock vaporizes Rock.'}
        ]

    def initialize(mode)
      @player_moves = []

      @plays = {r: 'rock', p: 'paper', s: 'scissors'}

      if mode == 2
        @plays[:l] = 'lizard'
        @plays[:sp] = 'Spock'
      end
    end

    def options
      options = []
      @plays.each do |symbol, word|
        options << "#{symbol} = #{word}"
      end
      options.join(', ')
    end

    def place_move(player_number, move)
      @player_moves[player_number - 1] = move if valid?(move)
    end

    def winner
      if @@wins.any? { |win| win[:pair] == @player_moves }
        1
      else
        2
      end
    end

    def phrase(moves)
      winning_move = @@wins.select { |win| win[:pair] == moves }.first
      winning_move[:phrase]
    end

    private

    def valid?(move)
      if @plays.has_key?(move.to_sym)
        true
      else
        puts Rainbow("\nI'm sorry, I don't recognize that move. Try again...").red
      end
    end

  end
end