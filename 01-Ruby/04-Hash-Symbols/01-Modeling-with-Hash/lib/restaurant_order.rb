MENU = {
  "Hamburger" => 250,
  "Cheese Burger" => 300,
  "Veggie Burger"	=> 540,
  "Vegan Burger" => 350,
  "Sweet Potatoes" => 230,
  "Salad" => 15,
  "Iced Tea" => 70,
  "Lemonade" => 90
}
#hash
def poor_calories_counter(burger, side, beverage)
  MENU[burger] + MENU[side] + MENU[beverage]
end
#method
p poor_calories_counter("Cheese Burger", "Salad", "Lemonade")
