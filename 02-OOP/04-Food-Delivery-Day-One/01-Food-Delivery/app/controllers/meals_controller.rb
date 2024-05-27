require_relative "../models/meal"
require_relative "../views/meal_view"
class MealsController
  def initialize(meal_repository)
    @meal_repository = meal_repository
    @meal_view = MealView.new
  end

  def add
    new_name = @meal_view.ask_for("name")
    new_price = @meal_view.ask_for("price").to_i
    new_meal = Meal.new(name: new_name, price: new_price)
    @meal_repository.create(new_meal)
  end

  def list
    meals = @meal_repository.all
    @meal_view.display_meals(meals)
  end
end
