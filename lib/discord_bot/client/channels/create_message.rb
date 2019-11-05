module DiscordBot
  class Client
    # Channel module
    module Channels
      # Message module
      module CreateMessage
        # Create message to channel
        def create_channel_message(channel_id:, content:)
          # define params for request
          body = { 'content' => content }.to_json
          headers = { 'Content-Type' => 'application/json', 'Authorization' => "Bot #{bot_token}", 'User-Agent' => user_agent }
          # make request
          self.class.post("/channels/#{channel_id}/messages", body: body, headers: headers).parsed_response
        end
      end
    end
  end
end
