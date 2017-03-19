module Bot
  module DiscordCommands
    module Commands
      extend Discordrb::Commands::CommandContainer
      command :commands do |event|
        "```
These are the available commands:

!info - Show the info about the community.

!cat - Cats are awesome.

!flip - You want to flip a coin, but the other person is far away? Use this.

!roll - Basically like rolling a 6-sided dice.

!ping - Use this command to check if the Cthulhu is awake.

!tebeste - Google memes, you know?

!rhum - Rhum is life.

!tree - You will see.

!teabag - Oh yeah.
        ```"
      end
    end
  end
end
