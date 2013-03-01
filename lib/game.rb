class Game
  def winner(players)
    if players[0].score < players[1].score
      players[1]
    elsif players[0].score == players[1].score
      nil
    else
      players[0]
    end
  end
end