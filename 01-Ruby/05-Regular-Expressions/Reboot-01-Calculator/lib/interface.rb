def calculate(first_number, secound_number, operator)
  case operator
  when "+"
  result = first_number + secound_number
  when "-"
  result = first_number - secound_number
  when  "*"
  result = first_number * secound_number
  when "/"
  result = first_number / secound_number.to_f
  end
  p result
end

choice = "y"
while choice == "y"
  puts "Enter a number"
  first_number = gets.chomp.to_i

  puts "Enter another number"
  secound_number = gets.chomp.to_i

  puts "Choose an operation"
  operator = gets.chomp

  puts "Result:#{result}"
  puts "Dou you want to calculate again (Y/N)?"
  choice = gets.chomp

  calculate(first_number, secound_number, operator)
  puts "Dou you want to calculate again (Y/N)?"
  choice = gets.chomp
end
#part II ask if want to loop again
#do you want to calculate again? (Y/N)
#end loop
