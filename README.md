# RockPaperScissors

Settle any argument with an epic Rock Paper Scissors battle. This gem allows you to run a 1 or 2 player rock paper scissors game from your command line.

*NEW* Rock-paper-scissors-lizard-Spock mode now available too! Test your prowess Sheldon-style. Don't know what I'm talking about? Check out the video...

<a href="http://www.youtube.com/watch?feature=player_embedded&v=cSLeBKT7-sM
" target="_blank"><img src="http://img.youtube.com/vi/cSLeBKT7-sM/0.jpg"
alt="IMAGE ALT TEXT HERE" width="240" height="180" border="10" /></a>

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rock_paper_scissors'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rock_paper_scissors

## Usage

1. To play the game, first require it in your Ruby script or jump into IRB or Pry require it there:
`require 'rock_paper_scissors'`

2. Then, set a variable equal to a new instance of Game:
`game = RockPaperScissors::Game.new`

3. The game will prompt you for play mode (1 for rock-paper-scissors, 2 for rock-paper-scissors-lizard-spock) and number of players (1 or 2).

4. Finally, start the game with `game.play` (or whichever variable you set in step 2).


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/siakaramalegos/rock_paper_scissors. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
