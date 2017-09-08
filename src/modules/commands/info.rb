module Bot
  module DiscordCommands
    module Info
      extend Discordrb::Commands::CommandContainer
      command :info do |event|
        "```
CNF-Paragon
Communauté Nord-Americaine Francophone de Paragon

Bienvenue !
CNF-Paragon est, comme en indique le nom, la plus grosse communauté de joueurs, d'équipes, de streamers et de youtubers qui parlent français et qui jouent sur les serveurs NA du jeu Paragon. Cette communauté est ouverte à tous les francophones  sur NA  et il nous fera plaisirs de vous voir participer à la vie communautaire du groupe. N'oubliez pas de nous rejoindre via nos divers plat-formes !
        ```"
      end
    end
  end
end
