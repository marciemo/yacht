require './lib/player'
require './lib/game'
require './lib/dice'

puts "Welcome to Yacht!"

players = [Player.new('player1'), Player.new('player2')]
game = Game.new
dice = Dice.new

13.times do
  players.each do |player|
    puts "\n#{player.name}, your turn!  Press enter to roll the dice..."
    gets
    this_roll = dice.toss.sort
    roll_points = dice.calculate_points
    player.add_points(roll_points)
    puts "You rolled: #{this_roll.join(', ')}"
    puts "Your roll earned you #{dice.calculate_points} points."
    puts "Your score is now #{player.score}"
  end 
end

puts "Congratulations #{game.winner(players).name}, won!"