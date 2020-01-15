module DiscordBot
  class Client
    # Gateway module
    module Gateway
      # Gateway module
      module GetGatewayBot
        # Get gateway bot
        def get_gateway_bot
          # define params for request
          headers = { 'Content-Type' => 'application/json', 'Authorization' => "Bot #{bot_token}", 'User-Agent' => user_agent }
          # make request
          self.class.get('/gateway/bot', query: {}, headers: headers).parsed_response
        end
      end
    end
  end
end
