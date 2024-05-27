class MealView
  def display_meals(meals)
    meals.each_with_index do |meal, index|
      puts "#{index + 1}. #{meal.name}"
    end
  end

  def ask_for(something)
    puts "#{something.capitalize}:"
    print ">"
    gets.chomp
  end
end
