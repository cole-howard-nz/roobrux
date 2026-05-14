friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun', "liam", "cole"]
invited_friends = []

# for friend in friends
#   if friend != "Brian"
#     invited_friends.push(friend)
#   end
# end
# puts invited_friends

# puts friends.select { |friend| friend != "Brian" }

# puts friends.reject { |friend| friend == "Brian" }

# friends.each { |friend| puts "Hello, " << friend.capitalize }

# my_array = [1, 2, 3]

# my_array.each { |number| 
#   new = number * 2
#   puts "#{ number } x 2 = #{ new }" 
# }

# hash = {
#   :Auckland => "AKL",
#   :Christchurch => "CHCH",
#   :Wellington => "WGN",
# }

# hash.each { |key, value| puts "#{ key } maps to #{ value}" }

# friends = friends.map { |friend| friend.upcase }
# puts friends

# my_order = ['medium Big Mac', 'MedIUM mediUM fries', 'Medium milkshake medium']
# my_order = my_order.map { |item| item                             # "MedIUM mediUM fries"
#                                   .downcase                       # "medium medium fries"
#                                   .sub("medium", "extra large")   # "extra large medium fries"
#                                   .gsub("medium", "")             # "extra large  fries"
#                                   .split                          # ["extra", "large", "fries"]
#                                   .join(" ")                      # "extra large fries"
#                                   .capitalize                     # "Extra large fries"
#                         }
# puts my_order

# puts friends.select { |friend| friend != "Brian" }
# puts friends.filter { |friend| friend != "Brian" }

# responses = { 'Sharon' => 'yes', 'Leo' => 'no', 'Leila' => 'no', 'Arun' => 'yes' }
# puts responses.filter { |key, value| value === "yes" }

# my_numbers = [5, 6, 7, 8]
# puts my_numbers.reduce { |sum, number| sum + number }
# puts my_numbers.inject { |sum, number| sum + number }
# puts my_numbers.inject(0) { |sum, number| sum + number }
# puts my_numbers.inject(1000) { |sum, number| sum + number }

# votes = ["Gibby", "Gibby", "Gibby", "God", "God", "Jebus", "Hezues"]
# puts votes.inject(Hash.new(0)) { |hash, vote| 
#   hash[vote] += 1
#   hash
# }

# friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

# friends.each { |friend| friend.upcase! }
# friends.map { |friend| friend.upcase! }

# puts friends