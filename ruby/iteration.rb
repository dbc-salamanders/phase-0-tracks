## Add array and hash

tennis_players = ["Federer", "Djokovic", "McEnroe", "Lendl"]
federer = {:forehand => "eastern", :backhand => "one-handed", :majors => 17, :serve_volley => true}

## Iterate through each item in array

tennis_players.each do |legend|
  puts "#{legend} is a tennis legend."
end

## Iterate through eah item in hash

federer.each do |key, value|
  puts "Roger Federer's #{key} is #{value}."
end

##Modify the items in the array using .map!

tennis_players.map! do |legend|
  legend.upcase
end

puts tennis_players