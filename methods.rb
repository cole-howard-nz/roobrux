def greet(name = "Unknown")
  "Hello " << name << "!"
end

puts greet("Cole")
puts greet

def even_odd(number = -1)
  unless number.is_a? Numeric
    return "Pass a numeric value"
  end

  if number % 2 == 0
    "Number is even" 
  else
    "Number is odd"
  end
end

puts even_odd(2)
puts even_odd(1)
puts even_odd("Ruby")