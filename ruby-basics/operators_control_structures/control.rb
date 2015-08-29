print "enter your name: "
name = gets.chomp
print "type uppercase or reverse: "
answer = gets.chomp.downcase


case answer
  when "reverse"
    puts "this is yhor name backwards: "
    puts name.reverse
  when "uppercase"
    puts name.upcase
  when "both" 
    puts name.upcase + " " + name.reverse
  else
    puts "ok whatever"
end


def check_num(num)
  case num
    when 2
      puts "great that is 2"
    when 3
      puts "great that is three"
    end
end


check_num(2)