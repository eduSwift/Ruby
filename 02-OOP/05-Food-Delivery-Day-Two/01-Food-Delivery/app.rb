require_relative "app/controllers/meals_controller"
require_relative "app/repositories/meal_repository"
require_relative "app/controllers/customers_controller"
require_relative "app/repositories/customer_repository"
require_relative "app/controllers/sessions_controler"
require_relative "app/repositories/employee_repository"
require_relative "app/controllers/orders_controler"
require_relative "app/controllers/order_repository"
require_relative 'router'

data_meals = "app/data/meals.csv"
meal_repository = MealRepository.new(data_meals)
meals_controller = MealsController.new(meal_repository)

data_customers = "app/data/customers.csv"
customer_repository = CustomerRepository.new(data_customers)
customers_controller = CustomersController.new(customer_repository)

data_employees = "app/data/employees.csv"
employee_repository = EmployeeRepository.new(data_employees)
sessions_controller = SessionsController.new(employee_repository)

data_orders = "app/data/orders.csv"
order_repository = OrderRepository.new(data_orders)
orders_controller = OrdersClontroller.new(order_repository)

router = Router.new(meals_controller, customers_controller, sessions_controller, orders_controller)

router.run
