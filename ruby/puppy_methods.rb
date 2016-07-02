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

end

mochi = Puppy.new
mochi.fetch("tennis ball")
mochi.speak(7)