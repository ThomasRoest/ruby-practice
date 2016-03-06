def sum(array)
  sum = 0
  array.each do |a| 
    sum += a
  end
  return sum
end

def mult
  div_3 = []
  div_5 = []
  1001.times do |i|
    if i % 3 == 0
      div_3.push(i)
    elsif i % 5 == 0
      div_5.push(i)
    end
  end
  return sum(div_3) + sum(div_5)
end

p mult






