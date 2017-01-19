class Player
  attr_accessor :gold_coins, :health_points, :lives, :score

  def initialize(gold_coins, health_points, lives, score)
    @gold_coins = 0
    @score = 0
    @lives = 2
    @health_points = 2
  end

  # def restart(gold_coins, health_points, lives, score)
  #   @gold_coins = 0
  #   @score = 0
  #   @lives = 5
  #   @health_points = 10
  # end

  def do_battle
    if health_points > 1
      @health_points -= 1
    elsif @health_points == 0 && @lives != 0
      (@lives -= 1)
      (@health_points += 10)
    else
      return restart
    end
  end

  def restart(gold_coins, health_points, lives, score)
    @gold_coins = 0
    @score = 0
    @lives = 5
    @health_points = 10
  end
end
