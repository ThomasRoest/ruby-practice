car_speed = 123

puts true if car_speed > 100


def is_odd(x)
  odd = x % 2 != 0
  return "#{x} is #{odd}"
end

def is_odd2(x)
  x % 2 == 0 ? false : true
end

def print_this(x)
  puts x if !(x > 100)
end

print_this(123)


puts is_odd(3)

puts is_odd2(5)