class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end

mochi = Puppy.new
mochi.fetch("tennis ball")