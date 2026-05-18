require_relative "lib/airport"
require_relative "lib/flight"
require_relative "lib/hotel"
require_relative "lib/food/breakfast"
require_relative "lib/food/dinner"

airport = Airport.new
flight = Flight.new
hotel = Hotel.new

# Constants are imported, but local variables are not.
# puts "#{ NUMBER_OF_AIRPORTS }"
# local_airport.introduce

puts Breakfast.food_opinion("Cereal")
puts Dinner.food_opinion("Chicken pasta")

cereal = Breakfast::Cereal.new
puts cereal.introduce