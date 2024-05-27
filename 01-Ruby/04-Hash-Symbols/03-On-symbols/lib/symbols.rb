def are_identical_symbols_same_objects?
  true
end

def are_identical_strings_same_objects?
  false
end

# Remember, RTFM! Your doc is your friend
# - https://ruby-doc.org/core-2.7.5/String.html
# - https://ruby-doc.org/core-2.7.5/Symbol.html

def convert_string_to_symbol(a_string)
  a_string.to_sym
end

def convert_symbol_to_string(a_symbol)
  a_symbol.to_s
end

def me
  {
    name: "Boris",
    age: 26
  }
end

def fruits
  %w[apple banana orange]
end
