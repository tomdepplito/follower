# Follower Gem - Tumblr Example
# Your first step is to go to www.tumblr.com/developers and register your application
# Tumblr will provide you with a Consumer key and secret which you will then need to copy into the respective constants below
# The PIN you need to enter when running this code can be found in the URL of the site which is launched at run time
# This process will be made easier in future versions of this gem

require 'follower'

new_user = Follower::User.new

CONSUMER_KEY = "" # Your CONSUMER key goes here
CONSUMER_SECRET = "" # Your CONSUMER secret goes here

follow_target_blog = "http://tomdepplito.tumblr.com/" # Your friend's blog URL goes here

tumblr_access_token = new_user.authenticate(CONSUMER_KEY, CONSUMER_SECRET, {:site => "http://www.tumblr.com"})
new_user.follow_tumblr(tumblr_access_token, follow_target_blog) # You are now following your friend's blog on Tumblr