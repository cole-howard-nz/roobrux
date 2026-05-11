array_one = Array.new(3, "Hello")
array_two = Array.new(3)

p array_one
p array_two

array_three = ["gibby", "gibson", "gibsta"]
p array_three[-2..-1]


puts array_three.first(array_three.size - 1)
puts array_three.last

array_four = Array.new(2)
array_four.push("New value", "Second new value")
array_four << "Another one"
p array_four

puts array_four.pop
p array_four


# Pushes a value to the beginning of the collection
array_four.unshift("Beginning value")
p array_four

# Pops the value from the beginning of the collection
p array_four.shift
p array_four

a = [1, 2, 3]
b = [4, 5, 6]
c = [7, 8, 9]

# Equal expressions
p a + b + c
p a.concat(b).concat(c)


# Returns values that are in the first array but not the second
p [1, 1, 2, 2, 3, 3] - [3, 4, 4, 5, 5]
p [3, 4, 5] - [5, 4, 3, 1]
p [3, 4, 5, 1] - [5, 4, 3]


# Useful method for all types to show all available methods..
puts Array.methods
puts "\n\n\n"

#empty
puts [].empty?
puts [[]].empty?

#length
puts [1,2,3,4].length
puts [1,2,3,4].size

#reverse
p [1,2,3,4].reverse

#include
a = [1, 2, 3]
b = [4, 5, 6]
c = [7, 8, 9]
d = [9, 8, 7]

puts a.include?(b)
puts c.include?(d)

p c
p d.reverse

# Interestingly is false
puts c.include?(d.reverse)

# This is true however, eql compares the values not object addresses
puts c.eql?(d.reverse)

#join
puts a.join
p a.concat(b).concat(c)

a = [1, 2, 3]
b = [4, 5, 6]
c = [7, 8, 9]

# "123-456-789"
p a.join.split.concat(b.join.split).concat(c.join.split).join("-")




