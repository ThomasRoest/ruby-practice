list = ['milk', 'cookies', 'pie']

list.shift()

list.unshift('new_item')


list2 = %w(hello this that)

puts list2


list2 << 'bullshit'

list2.pop()

list2.push('new item')

list2 += [2,true, false, 'hello']

puts list2


list.last
list.first

list[0]


list.insert(2, 'new item')

puts list

list.count('milk')

puts list.include?('hello')





# puts add_item(grocery_list, true)



return_list(grocery_list)


list.drop(2)

list.slice(0, 2)