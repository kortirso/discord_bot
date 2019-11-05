module DiscordBot
  class Client
    # Guild module
    module Guilds
      # Members module
      module Members
        # Get guild members list
        def get_guild_members(guild_id:)
          # define params for request
          headers = { 'Content-Type' => 'application/json', 'Authorization' => "Bot #{bot_token}", 'User-Agent' => user_agent }
          # make request
          self.class.get("/guilds/#{guild_id}/members", query: {}, headers: headers).parsed_response
        end
      end
    end
  end
end
