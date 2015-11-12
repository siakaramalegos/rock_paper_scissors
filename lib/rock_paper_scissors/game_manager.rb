require 'rainbow'
module RockPaperScissors

  class Game

    def initialize
      welcome_message

      # Instantiate board based on game mode
      mode = select_mode
      @board = Board.new(mode)

      num_players = select_player_mode
      initialize_players(num_players)

      puts "\n(Remember to begin play by entering game.play)"
    end

    def play
      loop do
        @player1.select_move
        @player2.select_move

        break if winner
      end

      play unless quit?
    end

    private

    # Choose regular mode or rock-paper-scissors-lizard-spock mode
    def select_mode
      loop do
        puts "\nType 1 for regular mode or 2 for rock-paper-scissors-lizard-spock mode."
        print " > "
        mode = gets.chomp.to_i
        if valid_mode?(mode)
          return mode
        end
      end
    end

    # Choose 1 or 2 player mode
    def select_player_mode
      loop do
        puts "\nType 1 for 1 player or 2 for 2 players"
        print " > "
        num_players = gets.chomp.to_i
        if valid_mode?(num_players)
          return num_players
        end
      end
    end

    # Instantiate players based on player mode
    def initialize_players(num_players)
      @player1 = Human.new(@board, 1)
      if num_players == 1
        @player2 = Computer.new(@board, 2)
      else
        @player2 = Human.new(@board, 2)
      end
    end

    def winner
      puts "\n\n"
      if @board.player_moves[0] == @board.player_moves[1]
        puts Rainbow("It's a draw!  Let's try again!").red
      else
        if @board.winner == 1
          print_results(@player1.name, @board.player_moves, 'green')
        else
          print_results(@player2.name, @board.player_moves.reverse, 'red')
        end
        true
      end
    end

    def print_results(player_name, moves, color)
      phrase = @board.phrase(moves)
      results = "#{player_name} WINS!!! #{phrase}"
      color == 'green' ? puts(Rainbow(results).green) : puts(Rainbow(results).red)
    end

    def quit?
      puts Rainbow("\nWould you like to play again? (y/n)").yellow
      gets.chomp.downcase != 'y'
    end

    def valid_mode?(mode)
      mode == 1 || mode == 2 ? true : puts("I'm sorry, I don't recognize that option. Try again...")
    end

    def welcome_message
      puts "\n"
      puts Rainbow("*********************************************").bg(:yellow).black
      puts Rainbow("**    Welcome to Rock, Paper, Scissors!    **").bg(:yellow).black
      puts Rainbow("*********************************************").bg(:yellow).black
    end

  end
end
