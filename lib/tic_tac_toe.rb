# frozen_string_literal: true

# A Tic Tac Toe Game
require './tic_tac_toe/menu'
require './tic_tac_toe/game'

answer = 0
cross = '  X  '
zero = '  O  '
print 'Introduce a size of TicTacToe:'
size = gets.chomp.to_i
game = TicTacToe::Game.new(size, cross, zero)
menu = TicTacToe::Menu.new(game)
game.reset_matrix
while game.play_again?(answer) <= 1
  menu.print_menu
  menu.options
end
