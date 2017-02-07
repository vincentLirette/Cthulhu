module Bot
  module DiscordCommands
    # Command for evaluating Ruby code in an active bot.
    # Only the `event.user` with matching discord ID of `CONFIG.owner`
    # can use this command.
    module Chini
      extend Discordrb::Commands::CommandContainer
      command :chini do |event|
        'Surrender @ 20'
      end
    end
  end
end
