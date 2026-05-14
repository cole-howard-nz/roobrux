number = 23.23

puts "My favourite number is: " + number.to_s

puts number.ceil
puts number.floor
puts number.round

puts Math.sqrt(50).round.to_s + " is a weird number"

new_number = Math.sqrt(49.8)
puts Math.sqrt(50).to_s[0,(new_number.to_s.length / 3).ceil] + " is a weird decimal number"