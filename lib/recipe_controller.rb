class CLIProject::Recipe_controller
    attr_accessor :user_recipes 

def initialize
    self.run
end 

def run 
    #puts "Welcome to the Recipe Picker app"
    #puts "How many calories would you like to consume per day?"
    #puts "Your choices are 1000, 1500, 2000, or 2500."
    #calories = gets.strip
   api_response = CLIProject::API.get_recipes_for_1000
   self.user_recipes = CLIProject::Recipes.new(api_response)

   #puts "Is this meal plan one you'd be interested in?"
   #puts "Please type yes or no."

   #user_recipes.get_recipes_by_calories(2000)

  
pp  api_response
 

   
  

end 



end 