module RockPaperScissors
  class Board
    attr_reader :plays, :player_moves
    @@wins = [
          {pair: ['r', 's'], phrase: 'Rock crushes Scissors.'},
          {pair: ['r', 'l'], phrase: 'Rock crushes Lizard.'},
          {pair: ['p', 'r'], phrase: 'Paper covers Rock.'},
          {pair: ['p', 'sp'], phrase: 'Paper disproves Spock.'},
          {pair: ['s', 'p'], phrase: 'Scissors cut Paper.'},
          {pair: ['s', 'l'], phrase: 'Scissors decapitate Lizard.'}
          {pair: ['l', 'sp'], phrase: 'Lizard poisons Spock.'},
          {pair: ['l', 'p'], phrase: 'Lizard eats Paper.'},
          {pair: ['sp', 's'], phrase: 'Spock smashes Scissors.'},
          {pair: ['sp', 'r'], phrase: 'Spock vaporizes Rock.'}]
        ]

    def initialize(mode)
      @player_moves = []

      @plays = [
          {symbol: 'r', name: 'rock'},
          {symbol: 'p', name: 'paper'},
          {symbol: 's', name: 'scissors'}
        ]

      if mode == 2
        @plays += [
          {symbol: 'l', name: 'lizard'},
          {symbol: 'sp', name: 'Spock'}
        ]
      end
    end

    def options
      options = []
      @plays.each do |play|
        options << "#{play.symbol} = #{play.name}"
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
      @plays.symbol.include?(move)
    end

  end
end