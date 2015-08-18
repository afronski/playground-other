require './dict.rb'

# Create a mapping of state to abbreviation.
states = Dict.new()
Dict.set(states, 'Oregon', 'OR')
Dict.set(states, 'Florida', 'FL')
Dict.set(states, 'California', 'CA')
Dict.set(states, 'New York', 'NY')
Dict.set(states, 'Michigan', 'MI')

# Create a basic set of states and some cities in them.
cities = Dict.new()
Dict.set(cities, 'CA', 'San Francisco')
Dict.set(cities, 'MI', 'Detroit')
Dict.set(cities, 'FL', 'Jacksonville')

# Add some more cities.
Dict.set(cities, 'NY', 'New York')
Dict.set(cities, 'OR', 'Portland')

# Puts out some cities.
puts '-' * 10
puts "NY State has: #{Dict.get(cities, 'NY')}"
puts "OR State has: #{Dict.get(cities, 'OR')}"

# Puts some states.
puts '-' * 10
puts "Michigan's abbreviation is: #{Dict.get(states, 'Michigan')}"
puts "Florida's abbreviation is: #{Dict.get(states, 'Florida')}"

# Do it by using the state then cities dict.
puts '-' * 10
puts "Michigan has: #{Dict.get(cities, Dict.get(states, 'Michigan'))}"
puts "Florida has: #{Dict.get(cities, Dict.get(states, 'Florida'))}"

# Puts every state abbreviation.
puts '-' * 10
Dict.list(states)

# Puts every city in state.
puts '-' * 10
Dict.list(cities)

puts '-' * 10
# By default Ruby says "nil" when something isn't in there.
state = Dict.get(states, 'Texas')

if !state
  puts "Sorry, no Texas."
end

# Default values using ||= with the "nil" result.
city = Dict.get(cities, 'TX', 'Does Not Exist')
puts "The city for the state 'TX' is: #{city}"
