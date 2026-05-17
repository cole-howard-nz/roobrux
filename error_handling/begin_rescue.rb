a = 1
b = "2"

begin
    c = 1 + b
    d = 0 / 0
rescue TypeError
    puts "TypeError"
end