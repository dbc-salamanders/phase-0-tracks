### Release 0 - design a class
# Class will be a soccer player (class Fussballer)
# Attributes will be age(integer), position(string), club(string), up_for_transfer(boolean)
# Initialize attributes above as instance variables in initialize method
# First method will be change_position. Method reassigns the players position
  # Note: make position readable and writable
# Second method will evaluate if player is up for transfer 
  # If up_for_transfer = true, print that player is considering transfer to a randomly selected team
  # If up_for_transfer = false, print that player is happy at @club
# Third method will track how many kilometers player ran in last match
  # Method takes kilometers as an argument(integer)
  
class Fussballer
attr_accessor :position, :up_for_transfer, :age, :club
  
  def initialize(age, position, club)
    @age = age
    @position = position
    @club = club
    @up_for_transfer = false
  end

  def change_position
    positions = ["goalkeeper", "left back", "right back", "center back", "libero", "right wing", "left wing", "central midfield", "midfield destroyer", "attacking midfield", "false 9", "striker"]
    @position = positions.sample
  end
  
  def transfer_gossip
    transfer_clubs = ["Liverpool", "Manchester United", "Arsenal", "Tottenham Hotspur", "Derby County", "Nottingham Forest", "Sheffield Wednesday", "Queen of the South", "Olympique Marseille", "Sochaux", "Schalke 04", "Borrussia Dortmund", "1. FC Koeln", "Cracovia", "Legia Warszawa", "Red Star Belgrade"]
    if @up_for_transfer == false
      puts "He's not going anywhere - this player is content at #{@club}"
    else
      puts "The papers are linking this player with a transfer to #{transfer_clubs.sample}"
    end
  end
  
  def kilometers_ran(kilometers)
    puts "This player can put in a shift. In fact, he ran #{kilometers} kilometers in his last match."
    return kilometers
  end
  
end

# Driver code to test class methods
=begin
sadio = Fussballer.new(25, "Striker", "Liverpool")
p sadio
sadio.change_position
sadio.transfer_gossip
sadio.up_for_transfer = true
sadio.transfer_gossip
sadio.position = "libero"
sadio.kilometers_ran(15)
p sadio
=end

### Release 2
# Initiate an empty hash to store data in
# Initiate a loop. done = false. Until done = true, loop the below
# Initiate a new instance of Fussballer class
# Prompt the user to create a soccer player by entering his/her age. input = @age
# Prompt the user to enter the player's position. input = @position
# Prompt the user to enter if the player is interested in switching position
  # If input = "yes", run change_position
# Prompt the user to enter if the player is currently interested in transferring to a new team
  # If input = "yes", up_for_transfer = true
# Prompt the user to enter (as a number) how many kilometers player ran in the last match. Input = kilometers
# Using the variables collected, print a statement detailing the players age, position, and club
# Run the transfer_gossip and kilometers_ran methods
# Push the instance of the class created into the hash as the key
# Push kilometers into the hash as the value
# Ask the user to type "Done" if they are finished, or any other key to continue
  # If input = "Done", then done = true and loop ends
  # Else, repeat loop

players = {}
done = false
until done == true do
  player = Fussballer.new(@age, @position, @club)
  puts "Let's create a soccer player. Start by entering his age as an integer"
    player.age = gets.chomp.to_i
  puts "Next, enter the player's position"
    player.position = gets.chomp.to_s
  puts "Is the player interested in switching position?"
    position_input = gets.chomp.to_s
    if position_input = ["Yes", "yes", "Yes ", " Yes", " yes", "y", "Y", " y", " Y", "y ", "Y "].include?(position_input)
      player.change_position
    end
  puts "Which club does the player play for?"
    player.club = gets.chomp
  puts "Is the player interested in a transfer to a different club?"
    transfer_input = gets.chomp.to_s
    if transfer_input = ["Yes", "yes", "Yes ", " Yes", " yes", "y", "Y", " y", " Y", "y ", "Y "].include?(transfer_input)
      player.up_for_transfer = true
    else
      player.up_for_transfer = false
    end
  puts "How many kilometers did the player run in the last match?"
    kilometers = gets.chomp.to_i
  players[player] = kilometers
  puts "Type 'done' to exit, or any other key to create another player"
    repeat = gets.chomp.to_s
    if repeat = ["Done", "done", " Done", " done", "Done ", "done "].include?(repeat)
      done = true
    else
      done = false
    end
end

#puts players

# Iterate over the players hash to call methods defined above
# Print a message for each instance in the hash to confirm that the data was collected/processed properly

players.each do |instance, distance|
  puts "Ok, great. So you have created a player who is #{instance.age} years old, plays in the #{instance.position} position for #{instance.club}."
  instance.transfer_gossip
  instance.kilometers_ran(distance)
  puts "----"
end
