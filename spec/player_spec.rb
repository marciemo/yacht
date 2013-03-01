require 'spec_helper'

describe Player do 

  context '#name' do
    it 'returns the players name' do
      player = Player.new('player1')
      player.name.should eq 'player1'
    end
  end

  context '#score' do
    it 'returns the players score' do
      player = Player.new('player1')
      player.score.should eq 0
    end
  end

  context '#add_points' do
    it 'takes an integer as an argument and adds it to the score of that player' do
      player = Player.new('player1')
      player.add_points(50)
      player.score.should eq 50
    end
  end

end