class Dice
  attr_reader :roll

  def intialize
    @roll = []
  end

  def toss
    @roll = (1..5).to_a.map {|die| die = Kernel.rand(1..6)}
  end

  def calculate_points
    if five_of_a_kind?
      50
    elsif four_of_a_kind?
      @roll.select{|element| @roll.count(element) >= 3}.inject(:+)
    elsif full_house?
      25
    elsif three_of_a_kind?
      @roll.select{|element| @roll.count(element) >= 3}.inject(:+)
    elsif straight?
      40
    elsif small_straight? 
      30
    else
      0
    end
  end

private
  def max_straight(array)
    sorted = array.sort.uniq
    max_find = 0
    sum = 1
    (1...sorted.length).each do |i|    
      sorted[i]-sorted[i-1] == 1 ? sum += 1 : sum = 0
      max_find = sum if sum > max_find
    end
    max_find
  end

  def three_of_a_kind?
    @roll.select{|element| @roll.count(element) >= 3}.length == 3
  end

  def four_of_a_kind?
    @roll.select{|element| @roll.count(element) >= 3 }.length == 4
  end

  def five_of_a_kind?
    @roll.uniq.length == 1
  end

  def straight?
    @roll.uniq.length == 5 && @roll.sort[4] - @roll.sort[0] == 4
  end

  def small_straight?
    max_straight(@roll) == 4
  end

  def full_house?
    @roll.uniq.length == 2 && four_of_a_kind? != true
  end
end