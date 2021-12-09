# This Class is responsible of all the contact details in the birthday file
class Contact
    attr_accessor :name , :email ,:contact_array, :contact_hash
    attr_reader :bd_month , :bd_day

    def initialize(name,email,bd_month,bd_day,contact_array)
        @name = name
        @email = email
        @bd_month = bd_month
        @bd_day = bd_day
        @contact_hash = {"name":@name , "email":@email ,"bd_month": @bd_month, "bd_day": @bd_day}
        @contact_array = contact_array
    end
    def add_contact_to_list 
        @contact_array << @contact_hash
    end
   
    
end