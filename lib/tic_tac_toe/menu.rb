module TicTacToe
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
    case option
    when 1
      puts "Introduce a row:"
      position_row = gets.chomp.to_i
      puts "Introduce a column:"
      position_column = gets.chomp.to_i
      @game.update_matrix(position_row, position_column)
    when 2
      @game.game_over
    else
      puts "Error you didn't choose a correct option"
    end
  end

end
end