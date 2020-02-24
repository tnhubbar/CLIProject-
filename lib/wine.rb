class CLIProject::Wine 
    attr_accessor :name, :description

    INITIAL_WINES = {1 => "Merlot", 2 => "Moscato", 3 => "Riesling", 4 => "Chardonnay", 5 => "Syrah"}

    @@wines = []

    def initialize(response)
        @description = response["text"]
        @name = response["text"].split(' ').first 
        @@wines << self 
    end 
 
    

    def self.all
       @@wines
    end 

    

    
    def self.find_or_create_by_name(name_or_number)
        if (1...5).include?(name_or_number.to_i)
            name_or_number = INITIAL_WINES[name_or_number.to_i]
        end
        if self.all.find {|wine| wine.name == name_or_number } 
           wine = self.all.find {|wine| wine.name == name_or_number }
           puts wine.description 
       else 
        response = CLIProject::API.get_pairings_for_wine(name_or_number)
        if response["text"]
            puts response["text"]
        user_wine = CLIProject::Wine.new(response)
        else
            puts "However, That wine is not recognized. Please enter another"
            puts "or select a corresponding number."
            CLIProject::Wine_controller.new
        end 
       end 
    end 
     

end 
