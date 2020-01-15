module DiscordBot
  class Client
    # Users module
    module Users
      # Get user info module
      module Me
        # Returns user
        def me
          # define params for request
          headers = { 'Content-Type' => 'application/json', 'Authorization' => "Bot #{bot_token}", 'User-Agent' => user_agent }
          # make request
          self.class.get('/users/@me', query: {}, headers: headers).parsed_response
        end
      end
    end
  end
end
