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
attr_accessor :position, :up_for_transfer
attr_reader :age, :club
  
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
    puts "This player ran #{kilometers} kilometers in his last match"
    return kilometers
  end
  
end

# Driver code to test class methods

sadio = Fussballer.new(25, "Striker", "Liverpool")
p sadio
sadio.change_position
sadio.transfer_gossip
sadio.up_for_transfer = true
sadio.transfer_gossip
sadio.position = "libero"
sadio.kilometers_ran(15)
p sadio