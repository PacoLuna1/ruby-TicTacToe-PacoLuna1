require 'tic_tac_toe/game'

describe TicTacToe::Game do 
  let(:game) {TicTacToe::Game.new(3)}
    

  describe '#play_again?' do 
    it 'When user want to reset the game' do
      expect(game.play_again?(1)).to eq(game.reset_matrix)
    end

    it 'When user want to finish the game' do
      expect(game.play_again?(0)).to eq(game.game_over)
    end
  end 
  

end


  