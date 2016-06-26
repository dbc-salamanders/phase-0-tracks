## Add array and hash

tennis_players = ["Federer", "Djokovic", "McEnroe", "Lendl", "Federer"]
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

## A method that iterates through the items, deleting any that meet a certain condition

tennis_players.delete_if { |legend| legend.length < 6}

federer.delete_if {|key, value| key == :forehand}

##A method that filters a data structure for only items that do satisfy a certain condition

tennis_players.keep_if { |legend| legend.length > 7}

federer.keep_if {|key, value| value == 17}

##A different method that filters a data structure for only items satisfying a certain condition

puts tennis_players.uniq

federer.each_value {|value| puts value}


