module Bot
  module DiscordCommands
    # Command for evaluating Ruby code in an active bot.
    # Only the `event.user` with matching discord ID of `CONFIG.owner`
    # can use this command.
    module Tebeste extend Discordrb::Commands::CommandContainer
      command :tree do |event|
        image_array = Dir["data/images/tree/*"]
        #image_array.sample
        event.channel.send_file File.new(image_array.sample)
      end
    end
  end
end
