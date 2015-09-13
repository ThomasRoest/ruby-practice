[1,2,3].each { |number| puts "Number: #{number}" }


def get_name(prompt, &block)
  print prompt +  ": "
  name = gets.chomp
  block.call(name)
  name
end


#call the method with a block argument
my_name = get_name("Enter your name") do |name|
  print "That's a cool name, #{name}! "
end

