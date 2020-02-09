class CLIProject::Recipes 
    attr_accessor :calories, :meals, :title, :nutrients

    @@all = []


    def initialize(api_response)
       api_response.each{|key, value|
        begin 
          self.send(("#{key}="), value)
          @@all<<self 
        rescue NoMethodError 
        end }
    end 

    def calories
        @calories
    end 

    def nutrients 
        @nutrients
    end 

    def self.all 
        @@all
    end 

    def get_recipes_by_calories(calories)
        self.all.detect do |recipes|
            recipes.calories == 2000
        end  
    end 

    #user_recipes = CLIProject::Recipes.new(api_response)


end 