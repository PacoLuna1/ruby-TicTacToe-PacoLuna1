require "./tic_tac_toe/menu"
require "./tic_tac_toe/game"

answer = 0
cross = '  X  '
zero = '  O  '
print 'Introduce a size of TicTacToe:'
size = gets.chomp.to_i
# score = TicTacToe::Score.new(size,cross, zero)
game = TicTacToe::Game.new(size,cross, zero)
menu = TicTacToe::Menu.new(game)
game.reset_matrix
game.show_matrix
while game.play_again?(answer) <= 1  do 
    menu.print_menu
    menu.options
    puts answer
end
puts "GAME OVER!!"
