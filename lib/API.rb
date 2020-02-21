

class CLIProject::API

  def self.get_pairings_for_wine(input)
  HTTParty.get "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/food/wine/dishes?wine=#{input}",
  headers:{
    "X-RapidAPI-Host" => "spoonacular-recipe-food-nutrition-v1.p.rapidapi.com",
    "X-RapidAPI-Key" => "c1316768abmsh89f8e89879289f6p16f69ejsn8a84bbc79579"
  }

   end 

   def self.get_initial_pairings_for_wine
    response1 = HTTParty.get "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/food/wine/dishes?wine=merlot",
      headers:{
        "X-RapidAPI-Host" => "spoonacular-recipe-food-nutrition-v1.p.rapidapi.com",
        "X-RapidAPI-Key" => "c1316768abmsh89f8e89879289f6p16f69ejsn8a84bbc79579"
      } 

      response2 = HTTParty.get "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/food/wine/dishes?wine=chardonnay",
      headers:{
        "X-RapidAPI-Host" => "spoonacular-recipe-food-nutrition-v1.p.rapidapi.com",
        "X-RapidAPI-Key" => "c1316768abmsh89f8e89879289f6p16f69ejsn8a84bbc79579"
      } 

      response3 = HTTParty.get "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/food/wine/dishes?wine=pinot noir",
      headers:{
        "X-RapidAPI-Host" => "spoonacular-recipe-food-nutrition-v1.p.rapidapi.com",
        "X-RapidAPI-Key" => "c1316768abmsh89f8e89879289f6p16f69ejsn8a84bbc79579"
      } 

      response4 = HTTParty.get "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/food/wine/dishes?wine=riesling",
      headers:{
        "X-RapidAPI-Host" => "spoonacular-recipe-food-nutrition-v1.p.rapidapi.com",
        "X-RapidAPI-Key" => "c1316768abmsh89f8e89879289f6p16f69ejsn8a84bbc79579"
      } 

      response5 = HTTParty.get "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/food/wine/dishes?wine=moscato",
      headers:{
        "X-RapidAPI-Host" => "spoonacular-recipe-food-nutrition-v1.p.rapidapi.com",
        "X-RapidAPI-Key" => "c1316768abmsh89f8e89879289f6p16f69ejsn8a84bbc79579"
      } 
     

      user_wine1 = CLIProject::Wine.new(response1)
      user_wine2 = CLIProject::Wine.new(response2)
      user_wine3 = CLIProject::Wine.new(response3)
      user_wine4 = CLIProject::Wine.new(response4)
      user_wine5 = CLIProject::Wine.new(response5)

     end 


end 