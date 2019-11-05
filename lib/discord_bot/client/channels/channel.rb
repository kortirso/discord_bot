module DiscordBot
  class Client
    # Channel module
    module Channels
      # Message module
      module Channel
        # Get channel
        def get_channel(channel_id:)
          # define params for request
          headers = { 'Content-Type' => 'application/json', 'Authorization' => "Bot #{bot_token}", 'User-Agent' => user_agent }
          # make request
          self.class.get("/channels/#{channel_id}", query: {}, headers: headers).parsed_response
        end
      end
    end
  end
end
