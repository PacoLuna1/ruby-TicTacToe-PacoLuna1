# 1 Tic Tac Toe

## Objective

In order to practice what we have learned regarding OOP and best practices, let's implement a Tic-Tac-Toe (Gato in Spanish) game!

## Rules
    • Two players represented with X and O.
    • First time the game is played, X startsEach player alternate turns to put a mark in the board on any available slot.
    • The game ends when either one of the players matches three marks in a horizontal, vertical or diagonal row or
    there are no more moves available.
    • Once the game finishes, players are asked if they want to play again. If they do, the player who lost the previous
    match starts. In case of a draw, the player who did the second-to-last movement starts.

## Considerations
    • Will the logic have to change if I want to play on a N x N board instead of the original 3 x 3?
    • Gem are supposed to be used by other programmers so they need to be well documented and tested.

## Game instructions

The game start ask you for the board size, after that the game ask the cell position to the player in turn, and that step is repeat
until there is a winner or a draw. When any of these conditions are reached display a message and after that the game ask if they want
to play again, if the answer is yes the game start again, otherwise the game ends.
# TicTacToe

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/tic_tac_toe`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tic_tac_toe'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tic_tac_toe

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec/test/` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/tic_tac_toe.
