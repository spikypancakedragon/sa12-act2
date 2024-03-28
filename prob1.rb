require 'httparty'
require 'json'

response = HTTParty.get('https://api.github.com/users/spikypancakedragon/repos')
if response.code == 200
  array = JSON.parse(response.body)

  most_stars = 0
  name = ''
  desc = ''
  url = ''
  array.each do |i|
    if i["stargazers_count"] > most_stars
      most_stars = i["stargazers_count"]
      name = i["name"]
      desc = i["description"]
      url = i["url"]
    end
  end

  puts "Name: #{name}, Description: #{desc}, URL: #{url}, Stars: #{most_stars}"
end
