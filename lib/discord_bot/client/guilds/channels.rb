module DiscordBot
  class Client
    # Guild module
    module Guilds
      # Members module
      module Channels
        # Get guild channels list
        def get_guild_channels(guild_id:)
          # define params for request
          headers = { 'Content-Type' => 'application/json', 'Authorization' => "Bot #{bot_token}", 'User-Agent' => user_agent }
          # make request
          self.class.get("/guilds/#{guild_id}/channels", query: {}, headers: headers).parsed_response
        end
      end
    end
  end
end
