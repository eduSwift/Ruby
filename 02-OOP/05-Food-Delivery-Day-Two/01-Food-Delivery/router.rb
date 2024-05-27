class Router
  def initialize(meals_controller, customers_controller, sessions_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @sessions_controller = sessions_controller
    @running = true
  end

  def run
    while @running
      @current_employee = @sessions_controller.login
      while @current_employee
        if @current_employee.manager?
          manager_menu
          choice = gets.chomp.to_i
          print `clear`
          manager_action(choice)
        else
          rider_menu
          choice = gets.chomp.to_i
          print `clear`
          rider_action(choice)
        end
      end
    end
  end

  private

  def manager_menu
    puts "┏━━━━━━━━━━━༻❁༺━━━━━━━━━━━┓"
    puts "-------- MANAGER MENU --------"
    puts "-----------------------------"
    puts "1. Add new meal"
    puts "2. List all meals"
    puts "3. Add new customer"
    puts "4. List all customers"
    puts "⬇️ We add manager tasks here ⬇️"

    puts "7. Log out"
    puts "8. Exit"
    print "> "
  end

  def rider_menu
    puts "· · ─────── ·𖥸· ─────── · ·"
    puts "------- RIDER MENU -------"
    puts "--------------------------"
    puts "1. Add new meal"
    puts "2. List all meals"
    puts "3. Add new customer"
    puts "4. List all customers"
    puts "⬇️ We add rider tasks here ⬇️"
    # TODO
    puts "7. Log out"
    puts "8. Exit"
    print "> "
  end

  def manager_action(choice)
    case choice
    when 1 then @meals_controller.add
    when 2 then @meals_controller.list
    when 3 then @customers_controller.add
    when 4 then @customers_controller.list
    when 5 then @sessions_controller.add
    when 6 then @sessions_controller.list
    when 7 then logout!
    when 8 then quit!
    else puts "Please try again..."
    end
  end

  def rider_action(choice)
    case choice
    when 1 then @meals_controller.add
    when 2 then @meals_controller.list
    when 3 then @customers_controller.add
    when 4 then @customers_controller.list
    when 5 then @sessions_controller.add
    when 6 then @sessions_controller.list
    when 7 then logout!
    when 8 then quit!
    else puts "Please try again..."
    end
  end

  def logout!
    @current_employee = nil
  end

  def quit!
    logout!
    @running = false
  end
end
