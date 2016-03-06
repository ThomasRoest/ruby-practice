items = { "name" => "bread", "quantity" => 1}

#adding to has

items['age'] = 26

items2 = {:name => "thomas", :age => 26}

items2.keys
items2.values

items2.has_key?(:name)

items2.key?(:age)
items2.member?(:age)

items.fetch(:age)


item.store(:town, "den haag")



#values

list = {:age => 26, :name => "thomas", :town => "den haag"}

list.values
#returns array
list.value?

list.values_at(:age, :town)


#hash methods

g_list = {"item" => "bread", "quantity" => 1, "cookies" => "yes please"}
puts "hash #{g_list.inspect}"

puts g_list.invert

puts g_list.shift

puts g_list.inspect
print "merge"


puts g_list.merge({:hobbys => "bullshitting"})
