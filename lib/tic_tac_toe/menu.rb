# frozen_string_literal: true

module TicTacToe
  # Menu for the game
  class Menu
    def initialize(game)
      @game = game
    end

    def print_menu
      puts '==============================='
      puts '            Menu               '
      puts '  (1)Choose a place            '
      puts '  (2)Leave game                '
      puts '==============================='
    end

    def options
      option = gets.chomp.to_i
      if option == 1
        puts 'Introduce a row:'
        position_row = gets.chomp.to_i
        puts 'Introduce a column:'
        position_column = gets.chomp.to_i
        @game.update_matrix(position_row, position_column)
      else
        @game.game_over if option == 2
        puts "Error you didn't choose a correct option"
      end
    end
  end
end
