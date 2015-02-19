require 'net/http'
require 'json'

url = URI('http://localhost:3000/api/cats')

response_str = Net::HTTP.get(url)

hash = JSON.parse(response_str)

puts hash


