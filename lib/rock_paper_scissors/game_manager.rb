module RockPaperScissors

  class Game
    @@move_lookup = {'r' => 'rock', 'p' => 'paper', 's' => 'scissors'}

    def initialize mode="AI"
      puts "\n*********************************************"
      puts "**    Welcome to Rock, Paper, Scissors!    **"
      puts "*********************************************"
      mode = select_mode
      initialize_players(mode)

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

    def winner
      puts "\n\n"
      if @player1.move == @player2.move
        puts "It's a draw!  Let's try again!"
      elsif player1_win?
        puts "#{@player1.name} WINS with #{@@move_lookup[@player1.move].upcase} beating #{@player2.name}'s #{@@move_lookup[@player2.move].upcase}!"
        true
      else
        puts "#{@player2.name} WINS with #{@@move_lookup[@player2.move].upcase} beating #{@player1.name}'s #{@@move_lookup[@player1.move].upcase}."
        true
      end
    end

    def select_mode
      puts "\nType 1 for 1 player or 2 for 2 players"
      print " > "
      gets.chomp.to_i
    end

    def initialize_players(mode)
      @player1 = Human.new

      if mode == 1
        @player2 = Computer.new
      elsif mode == 2
        @player2 = Human.new
      else
        puts "I'm sorry I didn't recognize your input. Try again..."
        initialize_players(select_mode)
      end
    end

    def player1_win?
      winners = [['r', 's'], ['p', 'r'], ['s', 'p']]
      winners.include? [@player1.move, @player2.move]
    end

    def quit?
      puts "\nWould you like to play again? (y/n)"
      gets.chomp.downcase != 'y'
    end

  end
end