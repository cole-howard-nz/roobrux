# test_scores = [
#   [97, 76, 79, 93],
#   [79, 84, 76, 79],
#   [88, 67, 64, 76],
#   [94, 55, 67, 81]
# ]

teacher_mailboxes = [
  ["Adams", "Baker", "Clark", "Davis"],
  ["Jones", "Lewis", "Lopez", "Moore"],
  ["Perez", "Scott", "Smith", "Young"]
]

# puts test_scores[-2][-2]        # 64
# puts teacher_mailboxes[0][2]    # Clark
# puts teacher_mailboxes[-1][-1]  # Young
# puts teacher_mailboxes[4][4]    # NoMethodError (row doesn't exist)
# puts teacher_mailboxes[0][4]    # Nil (column doesn't exist)
# puts teacher_mailboxes.dig(-1,-1) # Same as [-1][-1]
# puts teacher_mailboxes.dig(4,4)   # Will return nil instead of throwing an error
# puts teacher_mailboxes.dig(0,4)   # Will return nil

# nested = Array.new(3, Array.new(3))     # Creates nested arrays with same object reference
# nested[-1][-1] = "Last row, last column"
# p nested

# another_nested = Array.new(3) { Array.new(3) }
# another_nested[-1][-1] = "Last row, last column"
# p another_nested

# another_nested.push([1,2,3])
# another_nested << [4,5,6]
# another_nested[0].push("First row, last column")
# another_nested[0].unshift("First row, first column")
# p another_nested

# teacher_mailboxes.each_with_index { |row, index| puts "Index: #{ index }, Row: #{ row }"}
# teacher_mailboxes.each_with_index { |row, row_index|
#   row.each_with_index { |name, name_index| 
#     puts "Row index: #{ row_index }, Name: #{ name }"
#   }
# }

# teacher_mailboxes.flatten.each_with_index { |name, index| puts "Index: #{ index}, Name: #{ name }"}

# test_scores = [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [81, 81, 80]]

# puts test_scores.any? { |students_scores|
#   students_scores.all? { |score|
#     score > 80
#   }
# }

# puts test_scores.all? { |students_scores|
#   students_scores.any? { |score|
#     score > 80
#   }
# }

students = {
  Cole: {name: "Cole Howard", score: 75},
  Liam: {name: "Liam Prescott", score: 65},
  Pravin: {name: "Pravin Kasdrg", score: 95},
}

# students[:Cole][:score] = 99
# puts students[:Cole][:score]
# puts students.dig(:Unknown, :Unknown)

# students[:Gibby] = {name: "Gibby Gibson", score: 49, passed?: false}
# puts students.dig(:Gibby)

# students[:Gibby].delete(:passed?)
# puts students.dig(:Gibby)
# students.delete(:Gibby)
# puts students.dig(:Gibby)

# puts students.select { |student, data| data[:score] > 70 }
# puts students.collect { |student, data| data[:name] if data[:score] > 70 }.compact
puts students.filter_map { |student, data| data[:name] if data[:score] > 70 }