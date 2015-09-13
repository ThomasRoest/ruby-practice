class SimpleBenchmarker
  def run(description, &block)
    start_time = Time.now
    block.call
    end_time = Time.now
    elapsed = end_time - start_time
    puts "\n"
    puts "#{description} results"
    puts "elapsed time: #{elapsed} seconds"
  end
end

benchmarker  = SimpleBenchmarker.new


# call the run method with a block
benchmarker.run "sleep a random amount of time" do 
  # 100.times { 100 * 1000 }
  5.times do 
    print "."
    sleep(rand(0.1..1.0))
    #sleep method
  end
end