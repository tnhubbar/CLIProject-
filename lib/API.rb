

class CLIProject::API

  def self.make_request(input)
    HTTParty.get "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/food/wine/dishes?wine=#{input}",
    headers:{
      "X-RapidAPI-Host" => "spoonacular-recipe-food-nutrition-v1.p.rapidapi.com",
      "X-RapidAPI-Key" => "c1316768abmsh89f8e89879289f6p16f69ejsn8a84bbc79579"
    }
  end

  def self.handle_response(response)
    if response["status"] == "failure"
      puts "However, that wine is not recognized."
      puts "Please enter another wine or type exit to exit."
    end 
  end

  def self.get_pairings_for_wine(name_or_number)
    HTTParty.get "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/food/wine/dishes?wine=#{name_or_number}",
    headers:{
      "X-RapidAPI-Host" => "spoonacular-recipe-food-nutrition-v1.p.rapidapi.com",
      "X-RapidAPI-Key" => "c1316768abmsh89f8e89879289f6p16f69ejsn8a84bbc79579"
    }

    #response = make_request(input)
    #handle_response(response)
    
   end 

   def self.get_initial_pairings_for_wine
    response1 = HTTParty.get "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/food/wine/dishes?wine=merlot",
      headers:{
        "X-RapidAPI-Host" => "spoonacular-recipe-food-nutrition-v1.p.rapidapi.com",
        "X-RapidAPI-Key" => "c1316768abmsh89f8e89879289f6p16f69ejsn8a84bbc79579"
      } 

      response2 = HTTParty.get "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/food/wine/dishes?wine=moscato",
      headers:{
        "X-RapidAPI-Host" => "spoonacular-recipe-food-nutrition-v1.p.rapidapi.com",
        "X-RapidAPI-Key" => "c1316768abmsh89f8e89879289f6p16f69ejsn8a84bbc79579"
      } 

      response3 = HTTParty.get "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/food/wine/dishes?wine=riesling",
      headers:{
        "X-RapidAPI-Host" => "spoonacular-recipe-food-nutrition-v1.p.rapidapi.com",
        "X-RapidAPI-Key" => "c1316768abmsh89f8e89879289f6p16f69ejsn8a84bbc79579"
      } 

      response4 = HTTParty.get "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/food/wine/dishes?wine=chardonnay",
      headers:{
        "X-RapidAPI-Host" => "spoonacular-recipe-food-nutrition-v1.p.rapidapi.com",
        "X-RapidAPI-Key" => "c1316768abmsh89f8e89879289f6p16f69ejsn8a84bbc79579"
      } 

      response5 = HTTParty.get "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/food/wine/dishes?wine=syrah",
      headers:{
        "X-RapidAPI-Host" => "spoonacular-recipe-food-nutrition-v1.p.rapidapi.com",
        "X-RapidAPI-Key" => "c1316768abmsh89f8e89879289f6p16f69ejsn8a84bbc79579"
      } 
     

      merlot = CLIProject::Wine.new(response1)
      chardonnay = CLIProject::Wine.new(response2)
      pinot = CLIProject::Wine.new(response3)
      riesling = CLIProject::Wine.new(response4)
      moscato = CLIProject::Wine.new(response5)
      

     end 


end 