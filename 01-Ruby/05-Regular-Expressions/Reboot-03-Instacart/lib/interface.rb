store = {
  "kiwi" => 1.23,
  "banana" => 0.5,
  "mango" => 4.0,
  "asparagus" => 9.0
}
total_bill = 0
puts "--------------------"
puts "Welcome to Instacart"
puts "--------------------"
puts "In our store today:"
store.each do |name, price|
  puts "#{name}: #{price}$"

  if store.key? (user_choice)
    price = store[user_choice]
    bill += price
    puts "Adding #{user_choice} to the  bill ata price o"
  elsif user_choice == "quit"
  begin
    puts "Sorry, we don't have #{user_choice} today"
  rescue => exception
    
  else
    
  ensure
    
  end

  until user_choice == "quit"
  puts "-----BIL-------"
  puts "TOTAL: #{bill}"
  puts "-----BIL-------"
  end










#end loop
# total: 5,25
# print out the total bill
