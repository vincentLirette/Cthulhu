module Bot
  module DiscordCommands
    module Cat
      extend Discordrb::Commands::CommandContainer
      bucket :cats, limit: 3, time_span: 60, delay: 10
      command(:cat, bucket: :cats) do |event|
	uri = URI('http://random.cat/meow')
        json = JSON.parse(Net::HTTP.get(uri))
        event.respond json['file']
      end
    end
  end
end
