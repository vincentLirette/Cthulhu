module Bot
  module DiscordCommands
    module Flip extend Discordrb::Commands::CommandContainer
      desc = "Flip a coin."
      command(:flip,
              description: desc,
              usage: "#{BOT.prefix}flip",
              help_available: true ) do |event|

        coin = ["Heads", "Tail"]
        coin.sample
      end
    end
  end
end
