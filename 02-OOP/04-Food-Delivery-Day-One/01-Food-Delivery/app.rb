require_relative "../models/meal"
require_relative "app/data/meal_repository"
require_relative 'controller'
require_relative 'router'
@csv_file_path = "app/data/meals.csv app/data/customers.csv"

csv_file = File.join(__dir__, 'app/data/meals.csv app/data/customers.csv')
meal = Meal.new(csv_file)
customer = Customer.new(csv_file)
controller = Controller.new(meal, customer)


router = Router.new(controller)

router.run
