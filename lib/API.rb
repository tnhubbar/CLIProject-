

class CLIProject::API


  def self.get_recipes_for_2000
  HTTParty.get "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/mealplans/generate?targetCalories=2000&timeFrame=day",
  headers:{
    "X-RapidAPI-Host" => "spoonacular-recipe-food-nutrition-v1.p.rapidapi.com",
    "X-RapidAPI-Key" => "c1316768abmsh89f8e89879289f6p16f69ejsn8a84bbc79579"
  }
 
end 

  def self.get_recipes_for_1500
    HTTParty.get "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/mealplans/generate?targetCalories=1500&timeFrame=day",
    headers:{
      "X-RapidAPI-Host" => "spoonacular-recipe-food-nutrition-v1.p.rapidapi.com",
      "X-RapidAPI-Key" => "c1316768abmsh89f8e89879289f6p16f69ejsn8a84bbc79579"
    }
  end 

  def self.get_recipes_for_1000
     HTTParty.get "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/mealplans/generate?targetCalories=1000&timeFrame=day",
     headers:{
       "X-RapidAPI-Host" => "spoonacular-recipe-food-nutrition-v1.p.rapidapi.com",
       "X-RapidAPI-Key" => "c1316768abmsh89f8e89879289f6p16f69ejsn8a84bbc79579"
     }
  end 



end 