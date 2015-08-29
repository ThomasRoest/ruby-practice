def get_name()
  print "Enter your name: "
  return gets.chomp
end

def greet(name)
  puts "Hi #{name}!"
end

def get_number()
  print "What number would you like to test?: "
  return gets.chomp.to_i
end

def divisible_by_3?(number)
  return (number % 3 == 0)
end

def check_num(number)
  case number
    when number < 5
      puts "less than 5"
    when number < 10
      puts "less than 10"
    when number < 15
      puts "less than 15"
    end
end

name = get_name()

greet(name)

number = get_number()

if divisible_by_3?(number)
  puts "The number is divisvle by three"
else
  puts "Your number is not divisible by three"
end

check_num