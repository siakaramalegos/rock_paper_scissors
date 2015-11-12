module RockPaperScissors

  require 'io/console'

  class Human < Player

    def initialize(board, player_number)
      super(board, player_number)
      @name = get_name
    end

    def select_move
      loop do
        move = ask_move
        if valid_format?(move)
          break if @board.place_move(@player_number, move)
        end
      end
    end

    private

    def ask_move
      puts "\nInput is HIDDEN! #{@board.options}"
      print "Enter move (#{@name}) > "
      STDIN.noecho(&:gets).chomp
    end

    def get_name
      puts "Welcome, new player!  What's your name?"
      print " > "
      gets.chomp.capitalize
    end

    def valid_format? move
      if move.length <= 2
        true
      else
        puts("Unrecognized input. Please enter 1-2 letters based on the play options...")
      end
    end

  end
end