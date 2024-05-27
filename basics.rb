
age = 46

#puts "Eduardo is #{age} years old"
require 'date'
def tomorrow
 tomorrow = Date.today + 1
 return tomorrow.strftime("%A, %b %d")
end

#puts tomorrow

def full_name(first, last)
  name = "#{first.capitalize} #{last.capitalize}"
  return name
end

puts full_name("eduardo", "rodrigues")

def tall?(height)
  if height >= 180
    return true
  else
    return false
  end
end

puts tall?(175)
