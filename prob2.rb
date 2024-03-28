require 'httparty'
require 'json'

response = HTTParty.get("https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd")

if response.code == 200

  array = JSON.parse(response.body)
  for i in 0..4
    puts "Name: #{array[i]["name"]} \nMarket cap: #{array[i]["market_cap"]}"
  end

elsif
  puts "error"
end
