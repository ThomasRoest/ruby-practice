class TodoItem
  attr_reader :name

  def initialize(name)
    @name = name
    @complete = false
  end

  def complete?
    #add a question mark to identify that the return value of this method is a booleań
    @complete
  end

  def mark_complete!
    #add exclamation mark for this method to identify a method that 
    #changes the internal state/attribute (only for reading)
    @complete = true
  end

  def mark_incomplete!
    @complete = false
  end

  def to_s
    if complete?
      "[C] #{name}"
    else
      "[I] #{name}"
    end
  end

end