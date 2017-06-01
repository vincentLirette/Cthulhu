module Bot
  module DiscordCommands
    # Command for evaluating Ruby code in an active bot.
    # Only the `event.user` with matching discord ID of `CONFIG.owner`
    # can use this command.
    module Roll
      extend Discordrb::Commands::CommandContainer
      command :roll do |event, min = 1, max = 5|
        number = Random.new
        number.rand(min.to_i..max.to_i)
      end
    end
  end
end
