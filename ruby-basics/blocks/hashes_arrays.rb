# string = "treehouse"

# #each char method
# string.each_char { |c| print "{c}-"}
#can also use each line method


# 5.downto(3) { |number| print number }

def separator
  puts "-" * 10
end


#arrays & blocks

array = [1,2,3,4,5,6,7,8,9,10,11,12]

array.each { |item| "item: #{item}"}

separator
#select items from arrays with a block
array.select { |item| item > 2 }

separator
array.reject { |item| item % 3 == 0 }

separator
#counts the nr of items divisible by 3
array.count { |item| item % 3 == 0 }


#hashes & blocks

hash = { 'name' => "thomas", 'location' => "den haag"}

hash.each do |key, value|
  puts "this is the key: #{key} and the value: #{value}"
end

separator
hash.each_key { |k| puts "this is the key: #{k}"}

separator
hash.each_value { |v| puts "this is the value: #{v}"}

separator
puts hash.keep_if { |key, value| key == "name"}
puts hash
#removes the other key value pairs

separator
hash2 = { "name" => "thomas", "location" => "delft"}

puts hash2.select { |key, value| key == "name" }