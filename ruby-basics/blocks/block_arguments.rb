[1,2,3].each { |number| puts "Number: #{number}" }


def get_name
  print "Enter your name: "
  name = gets.chomp
  yield name
end


#call the method with a block argument
get_name do |name|
  print "That's a cool name, #{name}! "
end

