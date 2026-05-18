def shift(char, shift_amount)
    uppers = ('A'..'Z').to_a
    lowers = ('a'..'z').to_a
    
    uppers.index(char) ? uppers[(uppers.index(char) + shift_amount) % 26] : lowers[(lowers.index(char) + shift_amount) % 26]
end

def caesar_cipher(user_input, shift_amount)
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

tests = [
    { input: ["", 5], expected: "" },
    { input: ["ABC", 1], expected: "BCD" },
    { input: ["XYZ", 3], expected: "ABC" },
    { input: ["abc", 2], expected: "cde" },
    { input: ["xyz", 2], expected: "zab" },
    { input: ["Hello, World!", 5], expected: "Mjqqt, Btwqi!" },
    { input: ["What a string!", 5], expected: "Bmfy f xywnsl!" },
    { input: ["Shift0", 0], expected: "Shift0" },
    { input: ["b", -1], expected: "a" },
    { input: ["a", -1], expected: "z" },
    { input: ["A", -1], expected: "Z" },
    { input: ["abc", 26], expected: "abc" },
    { input: ["ABC", 52], expected: "ABC" },
    { input: ["Rotate by 13", 13], expected: "Ebgngr ol 13" },
    { input: ["12345!@#", 7], expected: "12345!@#" }
]

tests.each { |test| 
    result = caesar_cipher(test[:input][0], test[:input][1])
    puts "Original-> #{ test[:input][0] }\nResult->   #{ result }\n#{ result.eql?(test[:expected]) ? "PASSED" : "FAILED" }\n\n"
}