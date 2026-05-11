is_dad_a_noob = true
is_gibby_a_noob = false

if is_dad_a_noob then puts "This is true" else puts "This is false" end


if is_gibby_a_noob
    puts "Impossible."
elsif is_dad_a_noob
    puts "Probable"
else
    puts "Somethings wrong I can feel it.."
end

num_one = "1"
num_two = "1"

puts num_one.eql? num_two
puts num_one.equal? num_two

puts 1 <=> 5  # -1, because 1 is less than 5
puts 5 <=> 5  #  0, because 5 is equal to 5
puts 5 <=> 1  #  1, because 5 is more than 1


if is_dad_a_noob && is_gibby_a_noob
    puts "Both are true"
elsif is_dad_a_noob || is_gibby_a_noob
    puts "One is true"
end

grade = "D"
did_i_pass = case grade
when "A","B","C"
    "Nice"
when "D"
    "Barely.."
else
    "Ya dun"

end
puts did_i_pass

money = 5_600_500
puts "You're broke" unless money > 1_000_000
puts "Can I get a loan?" unless money < 1_000_000

response = money > 5_000_000 ? "I need an investor" : "Sorry not interested"
puts response

true || puts("woah") 