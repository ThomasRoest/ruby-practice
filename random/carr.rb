class Car
  attr_accessor :name, :hp

  def initialize(name)
    @name = name
    @hp = 150
  end

  def drive
    p "broem boem drivingggg"
  end
  
end

c = Car.new("ferrari")

c.drive
p c.hp
p c.name