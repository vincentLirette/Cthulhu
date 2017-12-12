# DISCLAIMER #
# This version of the command is a PROTOTYPE.
# It needs a lot of optimisation and refactoring.
# I had to make the command work quickly, therefor it is dirty :(
module Bot
  module DiscordCommands
    module Role extend Discordrb::Commands::CommandContainer
      desc = "Manage your roles to see the announcement channels & receive notifications"
      command(:role,
              description: desc,
              usage: "#{BOT.prefix}role <action> <role_name> \nex:\n!role add ark\n!role del paragon",
              help_available: true ) do |event, action, role_name|

        auth_role_list = ['ark', 'paragon', 'csgo', 'dota2', 'fortnite', 'hearthstone', 'league', 'overwatch', 'pubg', 'rocketleague', 'smite', 'membre', 'autrejeux']

        if event.channel.name.eql?('bot-commands')
          current_server = event.author.server
          role_list = current_server.roles
          if action == 'list'
            toto = ""
            #server_roles = event.author.server.roles
            event << '```'
            auth_role_list.each do |role|
              event << role
            end
            event << '```'
            toto
          elsif action == 'add'
            if role_name == nil
              msg = "You need to specify a `role_name`. Type `#{BOT.prefix}role list` for the list of roles available."
              BOT.send_message(event.channel, msg)
            else
              r = find_role(role_list, role_name)
              event.author.add_role(r)
              msg = "The role #{role_name} was ADDED"
              BOT.send_message(event.channel, msg)
            end
          elsif action == 'delete' || action == 'del'
            if role_name == nil
              msg = "You need to specify a `role_name`. Type `#{BOT.prefix}role list` for the list of roles available."
              BOT.send_message(event.channel, msg)
            else
              r = find_role(role_list, role_name)
              event.author.remove_role(r)
              msg = "The role #{role_name} was DELETED"
              BOT.send_message(event.channel, msg)
            end
          else
            action = ' ' if action == nil
            msg = "Action `#{action}` isn't available"
            BOT.send_message(event.channel, msg)
          end
        else
          'Wrong channel, you need to type your command in #bot-commands'
        end
      end #command()

      module_function

      def find_role(role_list, role_name)
        role_list.each do |role|
          if role.name.downcase == role_name.downcase
            return role
          end
        end #for
      end #find_role

    end
  end
end
