=begin
module Shout

  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
  
  def self.yelling_happily(words_of_praise)
    words_of_praise + " Hallelujah!" + " =D"
  end

end

#Driver code to methods
p Shout.yell_angrily("Oh no")
p Shout.yelling_happily("It's a long weekend!")
=end

## Release 3
# Make a mixin version of the Shout module above
# Carry over yell_angrily and yelling_hapily methods
# Change methods so that they are not defined as .self
# Declare class for a person  who would be yelling angrily (taxi driver)
# Declare class for person who would be yelling happily (soccer fan)
# Include yell_angrily and yelling_happily methods in both classes

module Shout

  def yell_angrily(words)
    words + "!!!" + " :("
  end
  
  def yelling_happily(words_of_praise)
    words_of_praise + " Hallelujah!" + " =D"
  end

end

class Taxi_driver
  include Shout
end

class Soccer_fan
  include Shout
end

taxi = Taxi_driver.new
p taxi.yell_angrily("Traffic jam")
p taxi.yelling_happily("A $20 tip!")

soccer_fan = Soccer_fan.new
p soccer_fan.yell_angrily("Penalty in our box")
p soccer_fan.yelling_happily("Penalty saved!")
