class CLIProject::Recipe_controller
    attr_accessor :current_recipes 

def initialize
    self.run
end 

def run 
    #puts "Welcome to the Recipe Picker app"
    #puts "How many calories would you like to consume per day?"
    #calories = gets.strip
    #input = #{calories} per day 
   api_response = CLIProject::API.get_recipes

   puts response 
  

end 



end 