hash = {
  :Auckland => "AKL",
  "Christchurch" => "CHCH",
  "Some key" => [1,2,3,4,5]
}

p hash
p hash["Some key"]

new_hash = Hash.new
new_hash[:Auckland] = "Auckland"
p new_hash

p new_hash[:Unknown]                                    # returns nil
# p new_hash.fetch(:Unknown)                            # throws KeyError
puts new_hash.fetch(:Unknown, "No key for :Unknown")    # returns 2nd param as a default value

p new_hash
new_hash.delete(:Auckland)
p new_hash

p hash.keys
p hash.values

hash_one = {
  1 => "One",
  2 => "Two",
  3 => "Three"
}

hash_two = {
  4 => "Four",
  5 => "Five",
  6 => "Six"
}

hash_one.merge!(hash_two)
p hash_one