values = [42, 'a', 'r', 9, 5, 10022, 8.7, "sharon", "Libya", "Mars", "12", 98, rand + rand, {:dog=>'cat'}, 100, nil, 200.0000, Object, 680, 3.14, "Steve", 78, "Argo"].shuffle

values.each_cons(2).each { |a, b|
    begin
        c = a + b
    rescue
        puts "Couldn't add #{ a } (#{ a.class }) and #{ b } (#{ b.class }) together."
    else
        puts "#{ a } + #{ b } = #{ c }"
    end
}