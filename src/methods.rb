require "json"
def file_to_array(file_path)
    begin
        json_from_file = File.read(file_path)
        array_of_hash = JSON.parse(json_from_file)   
        
    rescue
        puts "Invalid path! Creating file for you"
        pp file_path
        default_json_contact = {"contacts":[]}
        File.open(file_path, "w") do |file| 
            file.write(default_json_contact.to_json)
        end
        array_of_hash = default_json_contact
    end 
    return array_of_hash
end 

def get_birthday_of_today(array_of_contacts)
     #  Getting the current  day and month
        today = Time.now
        today_month = today.month
        today_day = today.day

        array_of_contacts.each do |contact|
        if contact["month"] == today_month && contact["day"] == today_day
            puts "Today is #{contact["name"]}'s Birthday"
        end
    
    end
end