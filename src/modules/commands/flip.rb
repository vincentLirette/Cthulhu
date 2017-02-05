module Bot
  module DiscordCommands
    # Command for evaluating Ruby code in an active bot.
    # Only the `event.user` with matching discord ID of `CONFIG.owner`
    # can use this command.
    module Flip
      extend Discordrb::Commands::CommandContainer
      command :flip do |event|
        coin = ["Heads", "Tail"]
        coin.sample
      end
    end
  end
end
