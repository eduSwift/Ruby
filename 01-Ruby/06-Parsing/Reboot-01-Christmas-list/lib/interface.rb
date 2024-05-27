require_relative "display_list"

gift_list = [
  { name: "iphone", marked: false },
  { name: "airpods", marked: true },
  { name: "macbook pro", marked: false }
]
  puts "Welcome to your Christmas gift list"

user_action = ""
until user_action == "quit"
    puts "Which action [list|add|delete|quit]?"

  user_action = gets.chomp.downcase

  case user_action

  when "list"
    display_list(gift_list)

  when "add"
    puts "What do you want to add?"
    user_gift_to_add = gets.chomp
    gift_list << user_gift_to_add
    display_list(gift_list)

  when "delete"
    display_list(gift_list)
    puts "Please type the number of the item to delete."
    user_index_to_delete = gets.chomp.to_i - 1
    gift_list.delete_at(user_index_to_delete)
    display_list(gift_list)
  #when "mark"

  when "quit"
    puts "Quitting..."
  else puts "Sorry, we don't support that feauture..."
  end
end
