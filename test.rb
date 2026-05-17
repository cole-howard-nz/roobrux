module MathHelper
    def exponent x, y
        x ** y
    end
end

class Calculator
    include MathHelper

    def self.square_root number
        exponent number, 0.5
    end
end

puts Calculator.square_root 64