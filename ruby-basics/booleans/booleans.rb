require "./booleans2.rb"


# true false nil, are singleton objects

# speed_limit = 50

# puts speed_limit > 45

# def check_speed(speed, limit)
#   if speed > limit
#     car_speed()
#   else
#     puts "that's ok!"
#   end
# end


# check_speed(343,120)


# 10.times do |i|
#   puts i 
#   sleep 0.30
#   puts "mooohhh"
# end


#conditional assignment

# ||=

# setting the variable when unknown if exists

#name = "Thomas"

if defined?(name)
  #defined checks if name is assigned
  name
else
  name = "Andew"
end

# conditional assignment example


new_name = " "
# if not assigned, set to Andrew
new_name ||= "Andrew"

puts new_name
#this wil puts

