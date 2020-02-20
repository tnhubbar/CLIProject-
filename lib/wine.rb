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
    
    def self.find_or_create_by_name(name)
        if self.all.find {|wine| wine.name == name } 
           wine = self.all.find {|wine| wine.name == name }
           puts wine.description 
       else 
        response = CLIProject::API.get_pairings_for_wine(name)
        user_wine = CLIProject::Wine.new(response)
        puts user_wine.description 
       end 
    end 


end 
