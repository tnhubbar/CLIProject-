class CLIProject::Recipe_controller

def initialize
    self.run 
end 

def run 
    puts "Welcome to the Recipe Picker app"
    puts "How many calories would you like to consume per day?"
    #calories = gets.chomp
    #input = #{calories} per day 
    CLIProject::API.get_recipes 
end 




end 