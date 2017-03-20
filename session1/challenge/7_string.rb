# given a string, return the character after every letter "r"
# 
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  output = ""
  string.chars.each_with_index do |n, index|
    if string[index] == "r" || string[index] == "R"
      output << string[index+1,1]
    else
    end
  end
  return output
end
