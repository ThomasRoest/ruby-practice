# common use of modules is to add behaviour to class

#load in irb --> load "./modules.rb"

module SimpleModule
  VERSION = 1.0
  # constants
end

#load in irb --> load "./modules.rb"

SimpleModule::VERSION

# constant resolution operator (::) to access modules
