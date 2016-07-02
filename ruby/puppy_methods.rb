class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(times)
  	index = 0
  	until index > times
  	puts "Woof!"
  	index += 1
  	end
  	times
  end

  def roll_over
  	puts "*rolls over*"
  end
  
 def dog_years(human_years)
 	dog_age = 10.5 + (human_years - 2) * 4
 	puts dog_age
 	dog_age
 end

end

mochi = Puppy.new
mochi.fetch("tennis ball")
mochi.speak(7)
mochi.roll_over
mochi.dog_years(5)

