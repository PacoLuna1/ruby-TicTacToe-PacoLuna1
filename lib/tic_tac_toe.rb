# frozen_string_literal: true

require './tic_tac_toe/menu'
require './tic_tac_toe/game'
require './tic_tac_toe/board'

answer = 0
cross = '  X  '
zero = '  O  '
print 'Introduce a size of TicTacToe:'
size = gets.chomp.to_i
board = TicTacToe::Board.new(size, cross, zero)
game = TicTacToe::Game.new(size)
menu = TicTacToe::Menu.new(game, board)
board.reset_matrix
while answer <= 1
  menu.print_menu
  menu.options
end
