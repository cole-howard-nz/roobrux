string = "Cole Howard"

puts "Cole Howard"
puts "Cole\nHoward"
puts string

# Test

puts "\n\n\n"

# Another test

puts string.upcase
puts string.downcase
puts string.length

string = "   Cole Howard   "

puts string.length
puts string.strip

puts string

string = string.strip

puts string

puts string.include? "Not included"
puts string.upcase.include? "ole h".upcase

puts string[0,4]
puts string[string.length - 1]


puts string.index("H")