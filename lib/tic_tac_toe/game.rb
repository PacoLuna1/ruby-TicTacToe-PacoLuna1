# frozen_string_literal: true

module TicTacToe
  # A Tic Tac Toe Game
  class Game
    def initialize(size, cross, zero)
      @size = size
      @cross = cross
      @zero = zero
      @matrix = Array.new(@size) { Array.new(@size) }
      @position = 0
      @last = size - 1
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
          matrix = @matrix[row][column]
          print column == @size - 1 ? "#{matrix} \n" : " #{matrix} |"
          column + 1
        end
        row += 1
      end
    end

    def update_matrix(position_row, position_column)
      (@size * @size).times do
        @matrix[position_row][position_column] = if @position.even?
                                                   @cross
                                                 else
                                                   @zero
                                                 end
      end
      track_conditions
      show_matrix
      @position += 1
    end

    def track_conditions
      up_diagonal_conditions
      down_diagonal_conditions
      vertical_conditions
      horizontal_conditions
      draw if @position == (@size * @size)
    end

    def up_diagonal_conditions
      up_diagonal_x = up_diagonal_o = 0
      @matrix.each_with_index do |vector, row|
        vector.each_with_index do |_value, column|
          if @matrix[row][@last] == @cross && column == 1
            winner(@cross) if up_diagonal_x == @size - 1
            up_diagonal_x += 1
          elsif @matrix[row][@last] == @zero && column == 1
            winner(@zero) if up_diagonal_o == @size - 1
            up_diagonal_o += 1
          end
          column + 1
        end
        @last -= 1
        row += 1
      end
      @last = @size - 1
    end

    def horizontal_conditions
      @matrix.each do |vector|
        horizontal_x = horizontal_o = 0
        vector.each do |value|
          if value == @cross
            winner(value) if horizontal_x == @size - 1
            horizontal_x += 1
          elsif value == @zero
            winner(value) if horizontal_o == @size - 1
            horizontal_o += 1
          end
        end
      end
    end

    def down_diagonal_conditions
      down_diagonal_o = down_diagonal_x = 0
      @matrix.each_with_index do |vector, row|
        vector.each_with_index do |value, column|
          if value == @cross && column == row
            winner(value) if down_diagonal_x == @size - 1
            down_diagonal_x += 1
          elsif value == @zero && column == row
            winner(value) if down_diagonal_o == @size - 1
            down_diagonal_o += 1
          end
          column + 1
        end
        row + 1
      end
    end

    def vertical_conditions
      @matrix.each_with_index do |vector, row|
        vertical_o = vertical_x = 0
        vector.each_with_index do |_value, column|
          if @matrix[column][row] == @cross
            winner(@cross) if vertical_x == @size - 1
            vertical_x += 1
          elsif @matrix[column][row] == @zero
            winner(@zero) if vertical_o == @size - 1
            vertical_o += 1
          end
          column + 1
        end
        row + 1
      end
    end

    def winner(value)
      puts "Winner#{value}"
      puts 'Do you want to play again? (1) Yes (2) No'
      answer = gets.chomp.to_i
      play_again?(answer)
    end

    def draw
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
