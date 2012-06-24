# Follower Gem - Linkedin Example
# Your first step is to go to http://developer.linkedin.com/ and register your application
# Linkedin will provide you with an API key and secret which you will then need to copy into the respective constants below

require 'follower'

new_user = Follower::User.new

API_KEY = "" # Your API key goes here
API_SECRET = "" # Your API secret goes here

connection_target_email = "tomdepplito@gmail.com" # Your friend's email goes here

linkedin_access_token = new_user.authenticate(API_KEY, API_SECRET, {:site => "https://api.linkedin.com",
                                                                                   :request_token_path => "/uas/oauth/requestToken",
                                                                                   :authorize_path     => "/uas/oauth/authorize",
                                                                                   :access_token_path  => "/uas/oauth/accessToken"})
new_user.follow_linkedin(linkedin_access_token, connection_target_email) # You have now sent a connection message to your friend