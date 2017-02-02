module Bot
  module DiscordCommands
    # Command for evaluating Ruby code in an active bot.
    # Only the `event.user` with matching discord ID of `CONFIG.owner`
    # can use this command.
    module Cat
      extend Discordrb::Commands::CommandContainer
      command :cat do |event|
        uri = URI('http://random.cat/meow')
        json = JSON.parse(Net::HTTP.get(uri))
        event.respond json['file']
      end
    end
  end
end
