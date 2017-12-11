module Bot
  module DiscordCommands
    module Roll extend Discordrb::Commands::CommandContainer
      desc = "Rolling a dice. Default is a 6-sided dice. You can change the min and max values"
      command(:roll,
                description: desc,
                usage: "#{BOT.prefix}roll\n#{BOT.prefix}roll <min> <max>",
                help_available: true) do |event, min = 1, max = 5|
        random = Random.new
        number = random.rand(min.to_i..max.to_i)
        event << number
      end #command
    end
  end
end
