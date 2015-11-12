module RockPaperScissors

  require 'io/console'

  class Human < Player

    def initialize
      @name = get_name
    end

    def select_move
      loop do
        puts "\nInput is HIDDEN! Options: r = rock, p = paper, s = scissors"
        print "Enter move (#{@name}) > "
        @move = STDIN.noecho(&:gets).chomp
        break if valid?(move)
      end
    end

    private

    def get_name
      puts "Welcome, new player!  What's your name?"
      print " > "
      gets.chomp.capitalize
    end

    def valid? move
      VALID_ANSWERS.include?(move) ? true : puts("I'm sorry, that's not a valid move.  Try again...")
    end

  end
end