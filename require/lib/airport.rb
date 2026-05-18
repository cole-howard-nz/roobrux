class Airport
    def introduce
        "I'm at the airport!"
    end
end

# Constants are imported, but local variables are not.
local_airport = Airport.new
NUMBER_OF_AIRPORTS = 5