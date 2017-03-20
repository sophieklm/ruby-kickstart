# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
# 
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
# 
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"

def odds_and_evens(string, return_odds)
  output = ""
  string.chars.each_with_index do |n, index|
      if return_odds && index.odd? 
        output << n
      elsif !return_odds && index.even? 
        output << n
      else
      end
    end
  return output
end