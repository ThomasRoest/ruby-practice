# blocks on one line can be written with curly braces

# loop { 
#   print "do you want to continue"
#   answer = gets.chomp.downcase
# }

#blocks on two lines can be written with do.. end
# loop do 
#   print "do you want to continue: "
#   answer = gets.chomp.downcase
#   if answer == "n"
#     break
#   end
# end



random_number =  Random.new.rand(5)

loop do
  print "Gues the number: "
  answer = gets.chomp
  if answer == "e"
    puts "the number was #{random_number}"
    break
    #break to exit loops
  else
    if answer.to_i == random_number
      puts "that is correct!"
      break
    else
      puts "try again"
    end
  end
end