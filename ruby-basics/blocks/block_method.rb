def block_method
  puts "this is the first line in block_method"
  yield
  puts "this statement is after the yield keyword"
end


# call the method with a block
block_method do 
  puts "**this statement is called from the block**"
end