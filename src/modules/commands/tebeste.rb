module Bot
  module DiscordCommands
    module Tebeste extend Discordrb::Commands::CommandContainer
      desc = "Dude, Google it.."
      command([:googleit, :tebeste],
              description: desc,
              help_available: true,
              usage: "#{BOT.prefix}googleit") do |event|

        image_array = Dir["data/images/tebeste/*"]
        #image_array.sample
        event.channel.send_file(File.new(image_array.sample))
      end
    end
  end
end
