module Bot
  module DiscordCommands
    module Info
      extend Discordrb::Commands::CommandContainer
      command :info do |event|
        "```
Bienvenue !
CNF: Communauté Nord-Americaine Francophone
        ```"
      end
    end
  end
end
