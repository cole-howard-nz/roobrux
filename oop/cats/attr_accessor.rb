class Cat
  attr_accessor :name
  attr_reader :read_only
  attr_writer :write_only

  def initialize(name)
    
    # Use @ since it is a readonly and there is no risk of accidental modification of read_only outside the class
    @read_only = "Read only variable"
    
    # Use self. to be crystal clear that we are not creating a new local variable within the initialize method but the class variable name and write_only
    self.name = name
    self.write_only = "Write only variable"
  end

  def speak(phrase="Meow")
    "#{ self.name } says #{ phrase }"
  end
end

my_cat = Cat.new"Gibby"
puts my_cat.name
my_cat.name = "Gibsta"
puts my_cat.name
puts my_cat.speak

puts my_cat.read_only
# my_cat.read_only = "Error"
# puts my_cat.write_only
my_cat.write_only = "Fine"