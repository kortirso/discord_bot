module DiscordBot
  class Client
    # Channel module
    module Channels
      # CreateWebhook module
      module CreateWebhook
        # Create webhook to channel
        def create_channel_webhook(channel_id:, name:)
          # define params for request
          body = { 'name' => name }.to_json
          headers = { 'Content-Type' => 'application/json', 'Authorization' => "Bot #{bot_token}", 'User-Agent' => user_agent }
          # make request
          self.class.post("/channels/#{channel_id}/webhooks", body: body, headers: headers).parsed_response
        end
      end
    end
  end
end
