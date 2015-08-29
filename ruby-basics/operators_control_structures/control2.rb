print "What is your favorite number?: "
num = gets.chomp.to_i

if(num == 3 || num == 5)
  puts "thatś my fav number"
elsif num > 10 && num.even?
  puts "it's greater than 10 and even!"
elsif num.odd? && num % 3 == 0
  puts "divisible by three and odd "
else
  puts "what the hell"
end


def check_speed(car_speed)
  if car_speed >= 40 && car_speed <= 50
    return "#{car_speed} is safe"
  else
    return "#{car_speed} is not safe"
  end
end

puts check_speed(145)

car1_speed = 50
car2_speed = 60

if !(car1_speed == car2_speed)
  puts "what the hello"
end