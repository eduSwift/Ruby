require "date"

def age_in_days(day, month, year)
  # TODO: return the age expressed in days given the day, month, and year of birth
  return (Date.today - Date.new(year, month, day)).to_i
end
