# answer = ""
# while answer != "n"
#   print "do you want to repeat"
#   answer = gets.chomp.downcase
# end


def print_hello(num)
  i = 0
  while i < num
    puts "hello"
    i += 1
  end
end

answer = 0
while answer < 5
  print "how many times do you want to print hello"
  answer = gets.chomp.to_i
  print_hello(answer)
end