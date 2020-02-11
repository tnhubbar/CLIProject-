class CLIProject::Wine_controller
    attr_accessor 

def initialize
    self.run
end 
   
 
def run 
    puts "Welcome to the wine pairings app!" 
    puts "We will make sure your wine is paired correctly for success."
    puts "Which wine would you like to cook with tonight?"
    input = gets.strip
    puts "Great choice!"
    response = CLIProject::API.get_pairings_for_wine(input)
    @user_wine = CLIProject::Wine.new(response)
    puts "#{user_wine.description}"
   
    


end 

def error
    puts "That wine is not recognized. Please enter another wine."
end 

def prompt_user 
    input = gets.strip
end 


end 