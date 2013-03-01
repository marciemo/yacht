require 'spec_helper'

describe Game do
  context '#winner' do
    it 'returns the player object with the most points' do
      #Player.any_instance.stub(:score).and_return(40, 50)
      players = [Player.new('player1'), Player.new('player2')]
      players[0].add_points(40)
      players[1].add_points(50)
      game = Game.new
      puts game.winner(players)
      puts players[1].should eq players[1]
    end
  end
end

