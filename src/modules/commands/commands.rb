module Bot
  module DiscordCommands
    # Command for evaluating Ruby code in an active bot.
    # Only the `event.user` with matching discord ID of `CONFIG.owner`
    # can use this command.
    module Commands
      extend Discordrb::Commands::CommandContainer
      command :commands do |event|
        "```
These are the available commands:

!cat - Cats are awesome.

!flip - You want to flip a coin, but the other person is far away? Use this.

!skippy - Rhum is life.

!tebeste - Google memes, you know?

!roll - Basically like rolling a 6-sided dice.

!ping - Use this command to check if the Cthulhu is awake.
        ```"
      end
    end
  end
end
