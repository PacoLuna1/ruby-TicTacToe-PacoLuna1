# frozen_string_literal: true

module TicTacToe
  # A Tic Tac Toe Game
  class Game
    def initialize(size)
      @size = size
      @matrix = Array.new(@size) { Array.new(@size) }
      @position = 0
      @last = size - 1
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

    def play_again?(answer)
      if answer == 1
        reset_matrix
      elsif answer == 2
        game_over
      end
    end

    def game_over
      exit
    end
    
  end
end
