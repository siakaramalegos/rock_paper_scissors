module RockPaperScissors

  require 'io/console'

  class Human < Player

    def initialize(board)
      super(board)
      @name = get_name
    end

    def select_move
      loop do
        puts "\nInput is HIDDEN! #{@board.options}"
        print "Enter move (#{@name}) > "
        move = STDIN.noecho(&:gets).chomp
        if valid?(move)
          break if @board.place_move(@player_number, move)
        end
      end
    end

    private

    def get_name
      puts "Welcome, new player!  What's your name?"
      print " > "
      gets.chomp.capitalize
    end

    def valid? move
      if move.is_a? String && move.length <= 2
        true
      else
        puts "Unrecognized input. Please enter 1-2 letters based on the play options..."
      end
    end

  end
end