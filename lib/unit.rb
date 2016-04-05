class Unit

  attr_reader :health_points, :attack_power

  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def damage(attack_power)
    unless dead?
      @health_points -= attack_power
    else
      false
    end
  end

  def attack!(enemy, power = attack_power)
    if dead?
      false
    else
      enemy.damage(power)
    end
  end

  def dead?
    @health_points <= 0
  end

end