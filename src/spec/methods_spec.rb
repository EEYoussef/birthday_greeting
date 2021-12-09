require_relative '../methods.rb'

describe "get_birthday_of_today" do
    
    it "should be defined" do 
        expect(defined? get_birthday_of_today).to eq("method")
    end
    it "should accept an argument" do
        expect (get_birthday_of_today()). to raise_error
    end
    
    it "should return names of contacts who's birthday is tody" do 
        expect(get_birthday_of_today()).to be_a Contact 
    end 

end