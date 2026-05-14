require 'pry-byebug'

def isogram?(string)
  binding.pry
  
  original_length = string.length
  string_array = string.downcase.split('')
  unique_length = string_array.uniq.length
  original_length == unique_length
end

puts isogram?("Odin")

#=> false
