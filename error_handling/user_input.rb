while true
    print "Enter a number: "

    begin
        a = gets.match(/\d+/)[0]
    rescue
        puts "Couldn't convert your input to a number"
    else
        puts "#{ a } + 1 = #{ a.to_s.to_i + 1 }"
    end
end