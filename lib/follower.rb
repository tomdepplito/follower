require "follower/version"

module Follower

  class User
    def authenticate(consumer_key, consumer_secret, site)
      consumer = OAuth::Consumer.new(consumer_key, consumer_secret, site)
      request_token = consumer.get_request_token
      printf "Authorize your application and enter the PIN here: "
      Launchy.open(request_token.authorize_url)
      verification_code = gets.chomp
      request_token.get_access_token(:oauth_verifier => verification_code)
    end

    def follow_linkedin(access_token, email)
      path = 'https://api.linkedin.com/v1/people/~/mailbox'
      body = "{
                \"recipients\": {
                                  \"values\": [
                                                {
                                                  \"person\": {
                                                                \"_path\": \"/people/email=#{email}\",
                                                                \"first-name\":\"\",
                                                                \"last-name\":\"\"
                                                              }
                                                }
                                              ]
                                },
                \"subject\": \"Invitation to connect.\",
                \"body\": \"Say yes!\",
                \"item-content\":{
                                  \"invitation-request\":{
                                                          \"connect-type\":\"friend\"
                                                         }
                                 }
              }"
      access_token.post(path, body, "Content-Type" => "application/json")
    end

    def follow_twitter(access_token, handle)
      access_token.post("https://api.twitter.com/1/friendships/create.json?screen_name=#{handle}")
    end

    def follow_tumblr(access_token, blog)
      access_token.post("http://api.tumblr.com/v2/user/follow", {:url => blog})
    end
  end
end
