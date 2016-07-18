class VirusPredictor

require_relative 'state_data'
  
  # taking aruguments passed in on intitialization and declaring them as instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # calling the predicted_deaths and speed_of_spread methods which are defined below, passing in arguments of the instance variables which were defined in initialize
#private
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

#  private
  # declares number_of_deaths variable and and calculates number_of_deaths using population instance variable as input. Prints final output
  def predicted_deaths
    # predicted deaths is solely based on population density
=begin
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end
=end

  if @population_density > 50
    default = 200
    count = 0.4
    until @population_density >= default
      default -= 50
      count -= 0.1
    end
  else
    count = 0.05
  end

    number_of_deaths = (@population * count).floor
    
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end



    # declares speed variable and and calculates population_density using population instance variable as input. Prints final output
##  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
##  def speed_of_spread
##    speed = 0.0

##    if @population_density >= 200
##      speed += 0.5
##    elsif @population_density >= 150
##      speed += 1
##    elsif @population_density >= 100
##      speed += 1.5
##    elsif @population_density >= 50
##      speed += 2
##    else
##      speed += 2.5
##    end
  
  def speed_of_spread
    default = 200
    speed = 0.5
    until @population_density >= default
      default -= 50
      speed += 0.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end

end

#=======================================================================

STATE_DATA.each do |state, data|
  state = VirusPredictor.new(state, data[:population_density], data[:population])
  state.virus_effects
end

# DRIVER CODE
 # initialize VirusPredictor for each state

##alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
##alabama.virus_effects

##jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
##jersey.virus_effects

##california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
##california.virus_effects

##alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
##alaska.virus_effects

##alaska.predicted_deaths
#=======================================================================