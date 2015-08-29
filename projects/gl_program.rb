def create_list
  print "What is the list name?: "
  name = gets.chomp

  return { "name" => name, "items" => Array.new }
  return hash
end


def print_separator(character="-")
  puts character * 80
end

def print_list(list)
  puts "list: #{list['name']}"
  print_separator()

  list["items"].each do |item| 
    puts "\titem: " + item['name'] + "\t\t\t" +
         "quantity: " + item['quantity'].to_s
    print_separator()
  end
end


def add_list_item
  print "What is the item called?: "
  item_name = gets.chomp

  print "how much?: "
  quantity = gets.chomp.to_i

  hash = { "name" => item_name, "quantity" => quantity }
  return hash
end


prompt = "> "

list = create_list()

instructions = "Type help to see commands"
help = "Use the following commands: \n add: 'Adds a new item to the list \n print: 'Shows the list' \n exit: 'closes the program"


puts instructions
print prompt

while user_input = gets.chomp
  if user_input == "add"
    list['items'].push(add_list_item())
    print_list(list)
  elsif user_input == "print"
    print_list(list)
  elsif user_input == "help"
    puts help
  elsif user_input == "exit"
    break
  end
  print prompt
end

