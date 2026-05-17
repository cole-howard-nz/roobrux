class Cat
  def initialize(name)
    @name = name
  end

  def speak(phrase = "Meow")
    "#{ phrase }"
  end

  def name
    @name
  end

  def name=(new_name)
    @name = new_name
  end
end

cat = Cat.new "Gibby"
puts cat.speak
puts cat.speak("Uhh gibbay")
puts cat.name
cat.name = "Gibsta"
puts cat.name