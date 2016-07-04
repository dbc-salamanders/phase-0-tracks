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