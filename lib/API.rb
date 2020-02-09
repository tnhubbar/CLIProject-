

class CLIProject::API


  def self.get_recipes
  HTTParty.get "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/mealplans/generate?targetCalories=2000&timeFrame=day",
  headers:{
    "X-RapidAPI-Host" => "spoonacular-recipe-food-nutrition-v1.p.rapidapi.com",
    "X-RapidAPI-Key" => "c1316768abmsh89f8e89879289f6p16f69ejsn8a84bbc79579"
  }

 
end 


   #def get_recipes(input)
     #input = 2000
    #response = HTTParty.get(BASE+"recipes/#{input}")
   #end 

end 