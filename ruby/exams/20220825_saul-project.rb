# Instructions - Get the latitude and longitude from the zipcode introduced
# and use the weather API to get the current Weather Location.
require 'uri'
require 'json'
require 'net/http'

def api_call(url)
  uri = URI(url)
  res = Net::HTTP.get_response(uri)
  JSON.parse(res.body) if res.is_a?(Net::HTTPSuccess)
end

class Location
  attr_accessor :zipcode, :lat, :lng, :weather

  def initialize(zipcode)
    @zipcode = zipcode
    @lat, @lng = self.coordenates(zipcode)
    @weather = self.get_weather(lat, lng)
  end

  # privates
  def coordenates(zipcode)
    data = api_call("http://api.zippopotam.us/mx/#{zipcode}")
    data["places"]&.first.values_at("latitude", "longitude") if data
  end

  # private
  def get_weather(lat, lng)
    if lat and lng
      url = "https://www.7timer.info/bin/astro.php?lon=#{lng}&lat=#{lat}&ac=0&unit=metric&output=json"
      data = api_call(url)
      data["dataseries"]&.first["temp2m"]
    end
  end

  def to_s
    "Zipcode: #{zipcode},\nLatitude: #{lat},\nLongitude: #{lng},\nWeather: #{weather}"
  end
end


puts "Enter zipcode"
zip = gets.chomp
location = Location.new(zip)
puts location.to_s

puts "\nJust another instance"
location2 = Location.new(67117)
puts location2.to_s
