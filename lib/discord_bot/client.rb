require 'httparty'
require_relative 'client/guilds/members'
require_relative 'client/guilds/channels'
require_relative 'client/channels/channel'
require_relative 'client/channels/create_message'
require_relative 'client/channels/create_webhook'
require_relative 'client/webhooks/execute'
require_relative 'client/users/create_channel'
require_relative 'client/gateway/get_gateway'
require_relative 'client/gateway/get_gateway_bot'

module DiscordBot
  # Client library
  class Client
    include HTTParty
    include DiscordBot::Client::Guilds::Members
    include DiscordBot::Client::Guilds::Channels
    include DiscordBot::Client::Channels::Channel
    include DiscordBot::Client::Channels::CreateMessage
    include DiscordBot::Client::Channels::CreateWebhook
    include DiscordBot::Client::Webhooks::Execute
    include DiscordBot::Client::Users::CreateChannel
    include DiscordBot::Client::Gateway::GetGateway
    include DiscordBot::Client::Gateway::GetGatewayBot

    base_uri 'https://discordapp.com/api/v6'
    format :json

    attr_reader :bot_token, :user_agent

    def initialize(bot_token:)
      @bot_token = bot_token
      @user_agent = "ComConBot #{DiscordBot::VERSION}"
    end
  end
end
