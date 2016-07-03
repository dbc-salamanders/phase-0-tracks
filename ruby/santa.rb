class Santa
  
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    puts "Initializing Santa instance..."
  end
  
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end
  
  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end
  
# Method increases instance variable @age by 1
# Method accesses @age
# Method adds 1 to @age
# Method returns @age - now increased by 1

def celebrate_birthday
  @age += 1
  return @age
end
 
# Method reassigns reindeer to last place in @reindeer_ranking array
# Method takes reindeer's name (string) as an argument
# Method deletes the item in the array corresponding to the reindeer name passed in as argument
# Method assigns the item corresponding to argument to -1 in @reindeer_ranking array

def get_mad_at(reindeer_name)
  @reindeer_ranking.delete(reindeer_name)
  @reindeer_ranking.insert(-1, reindeer_name)
end

def gender(new_gender)
  @gender = new_gender
end

def age
  @age
  p @age
end

def ethnicity
  @ethnicity
end
 
end

# Driver code to test celebrate_birthday method
=begin
santa = Santa.new("male", "Japanese")
santa.age
santa.celebrate_birthday
santa.age
santa.celebrate_birthday
santa.age
=end

# Call instances of santas method and store in array
=begin
santas = []
santas << Santa.new("agender", "female")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")
=end

# Make code above more DRY
=begin
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

index = 0
until index == example_genders.length do
  santas << Santa.new(example_genders[index], example_ethnicities[index])
  index += 1
end
=end

# Iterate over santas array. Run celebrate_birthday on each instance
=begin
santas.each do |instance|
  instance.celebrate_birthday
end

p santas
=end