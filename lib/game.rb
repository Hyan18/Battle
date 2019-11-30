class Game
  attr_reader :player_1, :player_2, :player

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @player = player_1
    @other_player = player_2
  end

  def attack
    @other_player.reduce_hp(10)
    switch_turn
  end

  def switch_turn
    @player, @other_player = @other_player, @player
  end

  def finish
    if @player_1.hp == 0
      "Winner is #{@player_2.name}, Loser is #{@player_1.name}"
    elsif @player_2.hp == 0
      "Winner is #{@player_1.name}, Loser is #{@player_2.name}"
    end
  end
  
end
