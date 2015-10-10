require 'net/http'
require 'json'

######################
#  G E T
######################

url = URI('http://localhost:3000/api/cats')

response_str = Net::HTTP.get(url)

hash = JSON.parse(response_str)

puts hash

######################
#  P O S T
######################

url = URI('http://localhost:3000/api/cats')

cat = {email: 'a@a.a', ...}

options = {body: {cat: cat} }

response = Net::HTTP.post(url, options)
...