# Params
# angle (degrees)
def deg_to_rad(angle)
  angle * Math::PI / 180
end

# Params
# speed (m/s)
# angle (degrees)
def calculate_trajectory(speed, angle)
  g = 9.81
  
  radians = deg_to_rad(angle)

  distance = (speed**2) * Math.sin(2 * radians) / g

  max_height = (speed**2) * Math.sin(radians)**2 / (2 * g)
  
  puts "Max height: #{max_height.round}m, Max range: #{distance.round}m"
end

calculate_trajectory(5, 70)