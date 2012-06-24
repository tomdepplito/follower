# Follower Gem - Twitter Example
# Your first step is to go to https://dev.twitter.com/ and register your application
# Twitter will provide you with a Consumer key and secret which you will then need to copy into the respective constants below

require 'follower'

new_user = Follower::User.new

CONSUMER_KEY = "" # Your CONSUMER key goes here
CONSUMER_SECRET = "" # Your CONSUMER secret goes here

follow_target_handle = "myredhuntinghat" # Your friend's twitter handle goes here (You don't need the '@' symbol)

twitter_access_token = new_user.authenticate(CONSUMER_KEY, CONSUMER_SECRET, {:site => "http://api.twitter.com"})
tom.follow_twitter(twitter_access_token, follow_target_handle) # You are now following your friend on Twitter