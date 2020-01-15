module DiscordBot
  class Client
    # Gateway module
    module Gateway
      # Gateway module
      module GetGateway
        # Get gateway
        def get_gateway
          # define params for request
          headers = { 'Content-Type' => 'application/json', 'Authorization' => "Bot #{bot_token}", 'User-Agent' => user_agent }
          # make request
          self.class.get('/gateway', query: {}, headers: headers).parsed_response
        end
      end
    end
  end
end
