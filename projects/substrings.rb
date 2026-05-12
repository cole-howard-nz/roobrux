def substrings(phrase, dictionary)
    result = {}

    dictionary.each { |word| 
        matches = phrase.scan(word).length
        result[word] = matches if matches > 0
    }

    result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)