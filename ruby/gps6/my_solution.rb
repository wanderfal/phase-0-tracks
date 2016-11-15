# Virus Predictor

# I worked on this challenge [by myself].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
# when you require a file you will need the absolute path
# while require_relative, you will only need the relative path to the file

require_relative 'state_data'

class VirusPredictor
# Assigning instance variables at the creation of each new VirusPredictor
# instance
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# Calls on two other methods
  def virus_effects
    predicted_deaths
    speed_of_spread
    print "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
  end

  
# There are public, private and protected methods
# Public methods can be used outside of the class
# while private and protected methods can only be used within the class
# Evertyhing below the private declaration will become a private method

  private

# Takes the population of the state and calculates the predicted
# deaths based on population density
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      (@population * 0.4).floor
    elsif @population_density >= 150
      (@population * 0.3).floor
    elsif @population_density >= 100
      (@population * 0.2).floor
    elsif @population_density >= 50
      (@population * 0.1).floor
    else
      (@population * 0.05).floor
    end

    

  end

# Based on the state density, it calculates the speed that the
# outbreak will spread in months
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# Iterate through STATE_DATA however many number of states you need

STATE_DATA.each do |state, data|
  state_name = VirusPredictor.new(state, data[:population_density], data[:population])
  state_name.virus_effects
end
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section