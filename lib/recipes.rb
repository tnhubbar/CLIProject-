class CLIProject::Recipes 
    attr_accessor :calories, :meals, :title, :id, :nutrients 

    @@response =


    def initialize(api_response)
    api_response.each do |key, value|
    puts "Your #{key} are:" 
    value.each do |value, info|
        if value.class != Hash
    puts "#{value} : #{info}"
       
    end 
    end 
    end
end  
   


    def title=(api_response)

    end 

    def nutrients=()
        api_response[1]
    end 

    

    #user_recipes = CLIProject::Recipes.new(api_response)


end 

#api_response.each do |key, value|
 #   puts "Your #{key} are:" 
  #  value.each do |value, info|
   #     if value == "calories" || "protein" || "fat" || "carbohydrates"
    #puts "#{value} : #{info}"
       
    #end 
    #end 
    #end 