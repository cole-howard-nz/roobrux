
def shift(char, shift_amount)
    uppers = ('A'..'Z').to_a
    lowers = ('a'..'z').to_a
    
    uppers.index(char) ? uppers[(uppers.index(char) + shift_amount) % 26] : lowers[(lowers.index(char) + shift_amount) % 26]
end

def caesar_cipher(user_input, shift_amount)
    cipher = ""
    user_input
        .chars
        .map { |char| 
            if char.match?(/[a-zA-Z]/)
                shift(char, shift_amount)
            else
                char
            end
        }
        .join
end

puts caesar_cipher("What a string!", 5)