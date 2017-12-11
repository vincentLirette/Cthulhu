module Bot
  module DiscordCommands
    module Prune extend Discordrb::Commands::CommandContainer
      command(:prune, help_available: false) do |event, num = 2|

        if event.user.id == CONFIG.owner.to_i || event.user.id == '142390169406930944'.to_i
          if num.to_i < 2 || num.to_i > 100
            msg = "The number of messages to delete must be [2..100]."
            BOT.send_message(event.channel, msg)
          else
            event.channel.prune(num.to_i)
          end
        else
          msg = "You must be the Bot owner to run this command."
          BOT.send_message(event.channel, msg)
        end
      end
    end
  end
end
