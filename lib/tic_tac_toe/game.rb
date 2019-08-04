# frozen_string_literal: true
# A Tic Tac Toe Game
module TicTacToe
class Game

  def initialize(size,cross, zero)
    @size = size
    @cross = cross
    @zero = zero
    @matrix = Array.new(@size) { Array.new(@size) }
    @position = 0
    @last = @size - 1
  end
  
  def reset_matrix
    @position = 0
    @matrix.each_with_index do |vector, row|
      vector.each_with_index do |_value, column|
        @matrix[row][column] = "P #{row},#{column}"
        column + 1
      end
      row += 1
    end
  end
  
  def show_matrix
    @matrix.each_with_index do |vector, row|
      vector.each_with_index do |_value, column|
        if column == @size - 1
          print "#{@matrix[row][column]} \n"
        else
          print " #{@matrix[row][column]} |"
        end
        column + 1
      end
      row += 1
    end
  end
  
  def update_matrix(position_row, position_column)
    # if @position == @size * @size
    #   draw
    # else
      @size * @size.times do
        @position += 1
        @matrix[position_row][position_column] = if @position.even?
                                                    @cross 
                                                 else
                                                    @zero
                                                 end
        track_matrix                        
      end
      show_matrix
    # end
  end
  
  
  def track_matrix
    down_diagonal_o = 0
    down_diagonal_x = 0 # modify this section
    up_diagonal_x = 0
    up_diagonal_o = 0
    @matrix.each_with_index do |vector, row|
      horizontal_x = 0
      horizontal_o = 0
      vertical_o = 0
      vertical_x = 0
      vector.each_with_index do |value, column|
        case
        when value ==  @cross 
          horizontal_x = horizontal_pointer(value, horizontal_x)
          if column == row
            down_diagonal_x = down_diagonal_pointer(value, down_diagonal_x)
          end
        when value == @zero
          horizontal_o = horizontal_pointer(value, horizontal_o)
          if column == row
            down_diagonal_o = down_diagonal_pointer(value, down_diagonal_o)
          end
        when @matrix[column][row] ==  @cross 
          vertical_x = vertical_pointer(@cross, vertical_x)
        when @matrix[column][row] == @zero
          vertical_o = vertical_pointer(@zero, vertical_o)
        when @matrix[row][@last] == @cross  && column == 1
          up_diagonal_x = up_diagonal_pointer( @cross , up_diagonal_x)
        when @matrix[row][@last] == @zero && column == 1
          up_diagonal_o = up_diagonal_pointer(@zero, up_diagonal_o)
        end
        column + 1
      end
      @last -= 1
      row += 1
    end
    @last = @size - 1
  end
  
  def horizontal_pointer(value, horizontal)
    winner(value) if horizontal == @size - 1
    puts "#{horizontal} horizontal"
    horizontal + 1
  end
  
  def down_diagonal_pointer(value, down_diagonal)
    winner(value) if down_diagonal == @size - 1
    puts "#{down_diagonal} down diagonal"
    down_diagonal + 1
  end
  
  def vertical_pointer(value, vertical)
    winner(value) if vertical == @size - 1 
    puts "#{vertical} vertical"
    vertical + 1
  end
  
  def up_diagonal_pointer(value, up_diagonal)
    winner(value) if up_diagonal == @size - 1
    puts "#{up_diagonal} up diagonal"
    up_diagonal + 1
  end
  
  def winner(value)
    puts "Winner#{value}"
    puts 'Do you want to play again? (1) Yes (2) No'
    answer = gets.chomp.to_i
    play_again?(answer)
  end
  
  def draw()
    puts "It's a draw"
    puts 'Do you want to play again? (1) Yes (2) No'
    answer = gets.chomp.to_i
    play_again?(answer)
  end

  def play_again?(answer)
    if answer == 1  
      reset_matrix 
    elsif answer == 2 
      game_over
    end
    answer  
  end
  
  def game_over
    exit
  end
  
end
end