horses = ["Apollo", "Seabiscuit", "Eva"]
balance = 100
puts "Welcome to the horse races"

horses.each_with_index  do|horse, index|
  puts "#{index + 1} #{horse}"
end

while balance >= 10
puts "Pick a horse you think it's going to win"
pick_horse = gets.chomp

winner = horses.sample

  if winner == pick_horse
    puts "Congratulations #{winner} won"
    balance += 50
  else
    puts "Sorry, but #{winner} was the winner"
    balance -= 10
  end
end



#puts "Pick a horse"
#race = horses.sample
#pick_horse = gets.chomp


#if winner ==  return "Congratulations, you won"
   #else
    #return "You lost, sorry but Apollo is the winner"
