module Bot
  module DiscordCommands
    # Command for evaluating Ruby code in an active bot.
    # Only the `event.user` with matching discord ID of `CONFIG.owner`
    # can use this command.
    module Roll
      extend Discordrb::Commands::CommandContainer
      command :roll do |event|
        max = 6
        number = Random.new
        number.rand(max)
      end
    end
  end
end
