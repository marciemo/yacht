class Player

  attr_reader :name, :score

  def initialize(name)
    @name = name
    @score = 0
  end

  def add_points(points)
    @score += points
  end

end