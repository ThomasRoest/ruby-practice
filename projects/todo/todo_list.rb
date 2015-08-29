require "./todo_item"

class TodoList
  attr_reader :name, :todo_items

  def initialize(name)
    @name = name
    @todo_items = []
  end

  def add_item(name)
    todo_items.push(TodoItem.new(name))
    #adding a new instance of the TodoItem class with name to the array
  end

  def remove_item(name)
    #finding the item in the array
    
    if index = find_index(name)
      todo_items.delete_at(index)
      return true
    else
      return false
    end
  end


  def mark_complete(name)
    if index = find_index(name)
      todo_items[index].mark_complete!
      return true
    else
      return false
    end
  end


  def find_index(name)
    #the find index method used in delete and mark complete
    index = 0
    found = false

    todo_items.each do |todo_item|
      if todo_item.name == name
        found = true
      end
      if found
        break
      else
        index += 1
      end
    end
    if found
      return index
    else
      return nil
    end
  end

  def print_list(kind='all')
    puts "#{name} list - #{kind}"
    puts "-" * 30
    todo_items.each do |todo_item|
      case kind
      when 'all'
        puts todo_item
      when 'complete'
        puts todo_item if todo_item.complete?
      when 'incomplete'
        puts todo_item unless todo_item.complete?
      end
    end
    puts "\n"
  end

  def contains?(name)
    if todo_items.include?(name)
      return true
    else
      return false
    end
  end


end



list = TodoList.new("new_list")

list.add_item("milk")
list.add_item("cookies")
list.add_item("bread")
list.add_item("butter")

# list.mark_complete("bread")

# # puts list.inspect

# puts list.print_list


# puts list.print_list('complete')
# puts list.print_list('incomplete')

puts list.contains?("bread")