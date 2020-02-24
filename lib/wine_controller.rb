class CLIProject::Wine_controller
    

def initialize
    self.run
end 
   
 
def run 
    initial_api_request
    
    welcome_message
    wine_list 
    

    processing_answer
    prompt_user

   
end 

def error
    puts "However, that wine is not recognized."
    puts "Please enter another wine or type exit to exit."
end 

def initial_api_request
    CLIProject::API.get_initial_pairings_for_wine
end 


def prompt_user 
    puts "Is there another wine you'd like to drink tonight?"
    puts "If yes, please enter the corresponding number or wine. If not, please type exit."
    processing_answer
end 

def welcome_message
    puts " "
    puts "Welcome to the Wine Pairing App!"
    puts "We will make sure your wine is paired correctly for success."
    puts "Please select the corresponding number for a popular wine"
    puts "or type which wine you would like to drink tonight? Or type exit to end."
    puts " "
end 
def exit
    abort
end 

def wine_list
    puts "1. Merlot"
    puts "2. Moscato"
    puts "3. Riesling"
    puts "4. Chardonnay"
    puts "5. Syrah"
end 

def processing_answer
    input = gets.strip

    puts "Great choice!"
    if input == "exit"
        puts "Toodles!"
        sleep 1
        exit 
    else
    response = CLIProject::Wine.find_or_create_by_name(input)
   
   
     end 
end 

end 