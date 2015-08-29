# loop do 
#   print "Enter a number greater than 10 to exit: "
#   answer = gets.chomp.to_i
#   break if answer > 10
#   #can also be written on one line
# end


def get_name
  name = ""
  loop do 
    print "Enter your name (min 2 char, no numbers): "
    name = gets.chomp
    if name.length > 2 && !name.index(/\d/)
                          #regex checking for digits
      break
    else
      puts "name must be longer than 2 characters and not contain numbers"
    end
  end
  return name
end


name = get_name
puts "Hi #{name}"



def fizz_buzz(times)
  i = 0
  while i <= times
    if i.even?
      puts "number #{i} is even!"
    elsif i % 3 == 0
      puts "this is DIVISIBLE BY 3"
    else
      puts "number #{i} is odd!"
    end
    i += 1
  end
end


fizz_buzz(22)


def start_game
  print "how old are you"
  answer = gets.chomp.to_i
  if answer == 26
    puts "hooray that is correct"
  else
    puts "that is not correct"
  end
end


answer = ""
while answer != "n"
  print "please enter yes/no to continue (y/n)"
  answer = gets.chomp.downcase
  if answer == "y"
    start_game()
    break
  end
end