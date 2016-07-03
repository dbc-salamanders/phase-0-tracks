class Puppy
  
  def initialize
    puts "Initializing new puppy instance..."
  end

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

def doggy_treats
	treats_selection = ["chicken bone", "peanut butter", "leftovers"]
	treats_selection.each do |treat|
		puts "Let's give the puppy a treat! How about #{treat}?"
	end
end

end

#mochi = Puppy.new
#mochi.fetch("tennis ball")
#mochi.speak(7)
#mochi.roll_over
#mochi.dog_years(5)
#mochi.doggy_treats

class Wimbledon
	
	def initialize
#		puts "Wimbledon 2016..."
	end
	
	def countdown(times)
	  puts "Play was suspended due to rain"
	  puts "----"
	  puts "Play will resume in..."
	  i = times
	  until i == 0
	  puts "#{i}..."
	  i -= 1
	  end
	  times
	end
	
	def match
		players = ["Federer", "Murray", "Del Potro", "Gasquet", "Thiem", "Djokovic", "Isner", "Ferrer", "Nishikori", "Wawrinka"]
		other_players = ["Berdych", "Coric", "Ram", "Harrison", "Raonic", "Cilic", "Haas", "Mayer", "Fritz", "Stepanek"]
		puts "#{players.sample} will play #{other_players.sample} in today's match"
	end
	
	def new_balls
	  puts "New balls, please!"
	end
	
end

#wimby = Wimbledon.new
#wimby.semi_finals
#wimby.countdown(5)

# Initiate a loop to create 50 instances of Wimbledon class
# Until the loop has repeated 50 times, create a new instance of Wimbledon class
# Store each new instance in a hash
# Make the key for the hash the index, and the value the instance of Wimbledon class

wimby_hash = {}
index = 1
until index == 51
	new_instance = Wimbledon.new
	wimby_hash[index] = new_instance
  index += 1
end

#p wimby_hash

# Iterate over the hash created above
# Call the method match method for each instance

wimby_hash.each do |key, instance|
  puts "Wimbledon match # #{key}..."
  instance.match
  instance.new_balls
  instance.countdown(5)
end

#p wimby_hash