module DiscordBot
  class Client
    # Users module
    module Users
      # Create channel module
      module CreateChannel
        # Create message to channel
        def create_user_channel(recipient_id:)
          # define params for request
          body = { 'recipient_id' => recipient_id }.to_json
          headers = { 'Content-Type' => 'application/json', 'Authorization' => "Bot #{bot_token}", 'User-Agent' => user_agent }
          # make request
          self.class.post('/users/@me/channels', body: body, headers: headers).parsed_response
        end
      end
    end
  end
end
