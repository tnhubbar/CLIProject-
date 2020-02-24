class CLIProject::Wine 
    attr_accessor :name, :description

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
            wine = CLIProject::Wine.all[ name_or_number.to_i - 1]
        elsif self.all.find {|wine| wine.name == name_or_number } 
           wine = self.all.find {|wine| wine.name == name_or_number }
           puts wine.description 
       else 
            response = CLIProject::API.get_pairings_for_wine(name_or_number)
            if response["text"]
                puts response["text"]
            wine = CLIProject::Wine.new(response)
            else
                puts "However, That wine is not recognized. Please enter another"
                puts "or select a corresponding number."
                wine = CLIProject::Wine_controller.new
            end 
       end 
       puts wine.description 
       wine 
    end 
     


end 
