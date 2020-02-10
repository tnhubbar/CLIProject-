class CLIProject::Recipe_controller
    attr_accessor :user_recipes, :nutrients 

def initialize
    self.run
end 

def run 
    #puts "Welcome to the meal plan generator app"
    #puts "How many calories would you like to consume per day?"
    #puts "Your choices are 1000, 1500, 2000, or 2500."
    #calories = gets.strip
   api_response = CLIProject::API.get_recipes_for_1000 
   binding.pry
   recipe_instance = CLIProject::Recipes.new(api_response)
   #puts "Is this meal plan one you'd be interested in?"
   #puts "Please type yes or no."
   #answer = gets.strip 
   #if answer == yes 
    #generate recipes for id#
    #if answer == no
    #puts "Okay, let's try another one."
    #CLIProject::API.get_recipes_for_1000 


   #user_recipes.get_recipes_by_calories(2000)
 

  

end
end 


