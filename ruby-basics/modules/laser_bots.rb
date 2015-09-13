module LaserBots
  class Player
    attr_reader :name
    def initialize(name)
      @name = name
    end
  end

  class Robot
    attr_reader :name
    
  end
end


player = LaserBots::Player.new("Thomas")
puts player.name