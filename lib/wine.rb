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
    


end 
