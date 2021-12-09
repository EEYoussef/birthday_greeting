#--------Required Gems---------------
require_relative './methods.rb'
require "tty-prompt"

# ------------Reading from file birthday all the contacts 
hash_of_contacts = file_to_array ("./birthday.json")
array_of_contacts = hash_of_contacts["contacts"]
puts hash_of_contacts["contacts"][0]["name"]

#-------------Main Menu------------
prompt = TTY::Prompt.new
 answer = prompt.select("What would you like to do?") do |menu|
    menu.choice 'Whose birthday is today?',1
    menu.choice 'I want to add a contact',2
    menu.choice 'Exit',3
  end

puts answer
case answer
    when "1"
        get_birthday_of_today(array_of_contacts)
    
end