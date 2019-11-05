module DiscordBot
  class Client
    # Webhooks module
    module Webhooks
      # Execute module
      module Execute
        # Create webhook to channel
        def execute_webhook(webhook_id:, webhook_token:, content:)
          # define params for request
          body = { 'content' => content }.to_json
          headers = { 'Content-Type' => 'application/json', 'Authorization' => "Bot #{bot_token}", 'User-Agent' => user_agent }
          # make request
          self.class.post("/webhooks/#{webhook_id}/#{webhook_token}", body: body, headers: headers).parsed_response
        end
      end
    end
  end
end
