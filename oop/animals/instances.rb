require_relative "cat.rb"
require_relative "dog.rb"

cat = Cat.new("Douglas")
dog = Dog.new("Gibby", "Golden Retriever")

puts dog.name
puts dog.breed