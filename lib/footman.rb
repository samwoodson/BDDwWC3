# http://classic.battle.net/war3/human/units/footman.shtml

class Footman < Unit

 # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
  def initialize
    super(60, 10)
  end

  def attack!(enemy)
    if enemy.class == Barracks
      super(enemy, (attack_power/2.0).ceil)
    else
      super(enemy)
    end 
  end

end

