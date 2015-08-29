puts 23




array = %w(dog cat giraf bob)

array.each do |a|
  rev = a.reverse
  if rev == a
    puts a + " is a palindrome!"
  else
    puts a + " is not"
  end
  # puts "this is the word #{a} in reverse\n" 
  # puts a.reverse
  # if 
end



def fizz_buzz(num)
  num.times do |n|
    if n % 2 == 0 
      puts n
      puts " this Fizz"
    else
      puts n
      puts " this is Buzz"
    end
  end
end


fizz_buzz(100)