

class CLIProject::API


  def self.get_pairings_for_wine(wine_flavor)
  HTTParty.get "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/food/wine/dishes?wine=#{wine_flavor}",
  headers:{
    "X-RapidAPI-Host" => "spoonacular-recipe-food-nutrition-v1.p.rapidapi.com",
    "X-RapidAPI-Key" => "c1316768abmsh89f8e89879289f6p16f69ejsn8a84bbc79579"
  }
 
end 



end 