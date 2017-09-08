module Bot
  module DiscordCommands
    module Commands
      extend Discordrb::Commands::CommandContainer
      command :commands do |event|
        "```
These are the available commands:

!info - Show the info about the community.

!social - Social links for the community.

!cat - Cats are awesome.

!flip - You want to flip a coin, but the other person is far away? Use this.

!roll - Basically like rolling a 6-sided dice.

!ping - Use this command to check if the Cthulhu is awake.

<<<<<<< HEAD
!chini - ff20 guys.
=======
!tebeste - Google memes, you know?

!rhum - Rhum is life.

!tree - You will see.

!teabag - Oh yeah.
>>>>>>> bc680b48a02e33df35f58245e37ecd43c485af28
        ```"
      end
    end
  end
end
