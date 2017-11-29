#!/usr/bin/env ruby

require 'Twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "mgEx3cK2MVKqh9MBwF2kgXgAg"
  config.consumer_secret     = "C1ZQemdsCUelW3LHSDmi00rE0WgqNWJo2Yay7iSZsRNjpPtX4u"
  config.access_token        = "927132731062079488-gtgyoX7zhShNFfD7YSDX1goqNpmQCnN"
  config.access_token_secret = "e2g1L8n9kYnX5tubpjLzGz57sDcot3bDR74VxgtKgcmPV"
end


client.search("Zara").take(50).each do |tweet|
  puts "#{tweet.user.screen_name}: #{tweet.text}"
  client.favorite(tweet)
  client.update_with_media("@#{tweet.user.screen_name} Bénéficiez de 20% de réduction sur toute la boutique zara homme ", File.new("/Users/apple/Downloads/ZARA-HOME-Black-Friday.jpg"))
  sleep 900
end
