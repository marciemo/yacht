require 'spec_helper'

describe Dice do
 context '#toss' do
    it 'tosses the dice and returns 5 random numbers between 1 and 6' do
      Kernel.stub(:rand).and_return(1) 
      dice = Dice.new
      dice.toss.should eq [1, 1, 1, 1, 1]
    end
  end

  context '#calculate_points' do
    it 'tells you that a four of a kind is worth the sum of the dice' do
      Kernel.stub(:rand).and_return(1, 1, 1, 1, 2)
      dice = Dice.new
      dice.toss
      dice.calculate_points.should eq 4
    end

    it 'tells you that five of a kind is worth 50' do
      Kernel.stub(:rand).and_return(1, 1, 1, 1, 1)
      dice = Dice.new
      dice.toss
      dice.calculate_points.should eq 50
    end

    it 'tells you that a straight is worth 40' do
      Kernel.stub(:rand).and_return(4, 2, 5, 1, 3)
      dice = Dice.new
      dice.toss
      dice.calculate_points.should eq 40
    end

    it 'tells you that full-house is worth 30' do
      Kernel.stub(:rand).and_return(1, 1, 1, 2, 2)
      dice = Dice.new
      dice.toss
      dice.calculate_points.should eq 25
    end

    it 'tells you that three of a kind is worth the sum of the three matching dice' do
      Kernel.stub(:rand).and_return(1, 1, 1, 2, 3)
      dice = Dice.new
      dice.toss
      dice.calculate_points.should eq 3
    end

    it 'tells you that small straight is worth 30' do
      Kernel.stub(:rand).and_return(1, 6, 3, 4, 2)
      dice = Dice.new
      dice.toss
      dice.calculate_points.should eq 30
    end
  #end context
  end
#end describe
end