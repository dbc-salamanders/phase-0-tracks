class Santa
attr_reader :ethnicity
attr_accessor :gender, :age
  
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

# Getter and setter methods refactored/replaced with attr_reader/attr_writer at top
=begin
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
=end

end

### Driver code to test celebrate_birthday method
=begin
santa = Santa.new("male", "Japanese")
santa.age
santa.celebrate_birthday
santa.age
santa.celebrate_birthday
santa.age
=end

### Driver code to test gender method
=begin
santa = Santa.new("male", "Japanese")
p santa
santa.gender("female")
p santa
=end

### Call instances of santas method and store in array
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

### Make code above more DRY
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

### Iterate over santas array. Run celebrate_birthday on each instance
=begin
santas.each do |instance|
  instance.celebrate_birthday
end

p santas
=end

### Driver code to test attr_reader and attr_accessor
=begin
santa = Santa.new("female", "Persian")
p santa
p santa.age
p santa.ethnicity
santa.gender = "male"
santa.celebrate_birthday
p santa
=end

### Release 4
# Declare two arrays, one with sample genders and one with sample ethnicities
# Use attr_accessor to make age readable/writable
# Initate an instance of Santa class. Arguments will be randomly selected from two arrays
# Reassign age of santa to random number between 1 and 40 (santa.age = random number)
# Use .sample to randomly select

genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "caucasian", "Japanese-African", "Persian", "Arab", "Jewish", "Berber", "Sikh", "Indian", "Hutu", "Tootsie"]
ages=*(1...40)
# Not required, but push each instance into a hash
santa_hash = {}
# Use a loop to create 15 instances
index = 1
until index == 16 do
  santa = Santa.new(genders.sample, ethnicities.sample)
  santa.age = ages.sample
  puts "This santa is a #{santa.gender} #{santa.ethnicity} who is #{santa.age} years old."
  santa.speak
  # Not required, but push each instance into a hash
  santa_hash[index] = santa
  index += 1
end

p santa_hash