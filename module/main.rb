require "#{__dir__}/Ramdziana"
require "#{__dir__}/Friend"

ram = Ramdziana::Identity.new
friend = Friend::Identity.new
puts "His nickname is #{ram.nickname}. Wow! He is #{ram.age} years old now.	He stay in #{ram.address} and ready to receive payment from Google.
 Great man, visit his blog on #{ram.site}"
puts
puts "Thanks to his friend, #{friend.nickname}. #{friend.age} years old man."