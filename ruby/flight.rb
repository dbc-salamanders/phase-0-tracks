module Flight
  def take_off(altitude)
    puts "Taking off and ascending until altitude of #{altitude} feet reached..."
  end
end
    

class Bird
  include Flight
end

class Plane
  include Flight
end

bird = Bird.new
bird.take_off(3000)

plane = Plane.new
plane.take_off(5000)