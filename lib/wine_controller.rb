class CLIProject::Wine_controller
    

def initialize
    self.run
end 
   
 
def run 
    initial_api_request
    
    welcome_message
    wine_list 
    

    processing_answer

   
end 

def error
    puts "However, that wine is not recognized."
    puts "Please enter another wine or type exit to exit."
end 

def initial_api_request
    CLIProject::API.get_initial_pairings_for_wine
end 


def prompt_user 
    puts "Is there another wine you'd like to drink tonight? If not, please type exit."
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
    puts "5. Pinot Noir"
end 

def processing_answer
    input = gets.strip

    puts "Great choice!"
    response = CLIProject::API.get_pairings_for_wine(input)
    if input == "exit"
        puts "Toodles!"
        sleep 1
        exit 
    elsif response["status"] == "failure"
        error
        processing_answer
    elsif response["text"]
        user_wine = CLIProject::Wine.new(response)
        puts "#{user_wine.description}"
        prompt_user
    else 
        processing_answer
    end 
end 

end 