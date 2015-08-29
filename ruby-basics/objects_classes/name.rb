class Name
  attr_reader :first_name, :middle_name, :last_name
  #takes the name and creates a method that returns the attribute
  # attr_writer :title

  attr_reader :local_var_test

  attr_accessor :title
  #reader + writer

  def initialize(title, first_name, middle_name, last_name)
    @title = title
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end

  def full_name
    @local_var_test = "thomas"
    #call the full name method first, then the local var is also accessible with @ and atrr_reader

    @first_name + " " + @middle_name + " " + @last_name
  end

  def full_name_with_title
    @title + " " + full_name
  end

  def to_s
    full_name_with_title
    #prints the full name with title if using: puts name
  end
end

name = Name.new("Mr.", "Thomas", "", "Roest")

puts name.full_name_with_title

puts name

puts name.inspect
#shows the internal state of the object

#use load "name.rb"  in irb to load the file

# the attr writer method
# def title=(new_title)
#     @title = new_title
# end