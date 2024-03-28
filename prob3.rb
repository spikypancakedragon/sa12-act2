require 'httparty'
require 'json'

response = HTTParty.get("http://worldtimeapi.org/api/timezone/Europe/London")

if response.code == 200
  dictionary = JSON.parse(response.body)
  puts "The current time in Europe/London is #{dictionary["datetime"]}"

elsif
  puts 'error'
end
