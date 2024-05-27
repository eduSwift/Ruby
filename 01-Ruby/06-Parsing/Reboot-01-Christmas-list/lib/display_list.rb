def display_list(gift_list)
  print `clear`

  gift_list.each_with_index do |gift, index|
    puts "#{index + 1} - #{gift.capitalize}"
  end
end
