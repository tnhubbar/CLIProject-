class CLIProject::Wine_controller
    

def initialize
    CLIProject::Wine.find_or_create_by_name("merlot")
    self.run
end 
   
 
def run 
    welcome_message 
    

    processing_answer

   
end 

def error
    puts "However, that wine is not recognized."
    puts "Please enter another wine or type exit to exit."
end 

def prompt_user 
    puts "Is there another wine you'd like to drink tonight? If not, please type exit."
    processing_answer
end 

def welcome_message
    puts " "
    puts "Welcome to the Wine Pairing App!"
    puts "We will make sure your wine is paired correctly for success."
    puts "Please type which wine you would like to drink tonight? Or type exit to end."
    puts " "
end 
def exit
    abort
end 

def wine_list
    puts "1. Merlot"
    puts "2. Moscato"
    puts "3. Riesling"
    puts "4. Pinot Grigio"
    puts "5. Pinot Nior"
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