require "open-uri"
require "timeout"

uri = "http://en.wikipedia.org/wiki"

start_year = 1900
end_year = 2000
max_retries = 3

(start_year..end_year).each{ |year| 
    retries = 0

    begin
        wiki = URI.open("#{ uri }/#{ year }")
        puts "Wrote to ./wiki_#{ year }.html.."
    rescue StandardError => e
        if retries < max_retries
            puts "An error occured: #{ e }"

            retries += 1
            puts "Attempting to open #{ uri }/#{ year } again (#{ retries }/#{ max_retries })"

            sleep 1
            retry
        end

        puts "Failed after #{ max_retries } retries"
    else
        wiki_data = wiki.read
    ensure
        puts "Sleeping.."
        sleep 1
    end

    if wiki_data
        File.open("wiki_#{ year}.html", "w"){ |file|
            file.write(wiki_data)
        }
    end
}