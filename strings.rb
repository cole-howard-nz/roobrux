a = "Cole"
b = "cole"
c = "Cole Howard"
d = "      Leading spaces"


puts a.capitalize               # -> Cole howard
puts a.include? "cole"          # -> false
puts a.include? "Cole"          # -> true
puts b.include? "cole"          # -> true
puts b.upcase                   # -> COLE
puts a.downcase                 # -> cole
puts a.empty?                   # -> false
puts "".empty?                  # -> true
puts a.length                   # -> 4
puts a.reverse                  # -> eloC
puts c.split                    # -> ["Cole", "Howard"]
puts c.split("")                # -> ["C", "o", "l", "e", "", "H", ...]
puts c.split("e H")             # -> ["Col", "oward"]
puts d.strip                    # -> "Leading spaces"
puts 'Hello\', world #{ a }'
puts "Hello\', world #{ a }"