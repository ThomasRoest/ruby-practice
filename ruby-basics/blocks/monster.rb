class Monster
  attr_reader :name, :actions

  def initialize(name)
    @name = name
    @actions = {
      scream: 0,
      scares: 0,
      run: 0,
      hide: 0
    }
  end

  def separator
    puts "-" * 10
  end

  def print_score
    separator
    puts "#{name} scoreboard"
    separator
    puts "Screams: #{actions[:scream]}"
    puts "scares: #{actions[:scares]}"
    puts "runs: #{actions[:run]}"
    puts "hides: #{actions[:hide]}"
  end

  def say(&block)
    print "#{name} says..." 
    yield
  end

  def scream(&block)
    actions[:scream] += 1
    print "#{name} screams! "
    yield
  end

  def scare(&block)
    actions[:scares] += 1
    print "#{name} scares you!"
    yield
  end

  def run(&block)
    actions[:run] += 1
    print "#{name} runs!"
    yield
  end

  def hide(&block)
    actions[:hide] += 1
    print "#{name} hides!"
    yield self if block_given?
    # provide argument with block
  end
end

monster = Monster.new("flufy")

monster.say { puts "welcome to my home" }

puts monster.actions
monster.scream do 
  puts "BOO!"
end


puts monster.actions

monster.scare do 
  puts "SCARREEEEE!"
end

puts monster.actions

monster.run do 
  puts "Runnnnn!"
end

monster.hide do |m|
  puts "hideeee!"
  puts m.actions.inspect
  # using yield self
end

puts monster.actions

monster.print_score