# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method 
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong
  
  attr_accessor :number
  
  def initialize(number)
    number = 0 if number < 0 
    number= 99 if number > 99
    self.number = number
  end
  
  def print_song
    number.downto(0) do |n|
      song(n)
    end
  end
  
  def song(n)
    if n.zero? 
      String.new
    else
      puts "#{bottles(n)} of beer on the wall,\n #{bottles(n)} of beer,\nTake one down, pass it around,\n, #{bottles(n -= 1)} bottles of beer on the wall"
    end
  end
  
  def words(n)
    if n < 20 
      %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)[n]
    elsif n % 10 == 0 
      %w(zero ten twenty thirty forty fifty sixty seventy eighty ninety)[n/10]
    else 
      "#{words n/10*10} - #{words n%10}".downcase
    end
    words.capitalize
  end
  
  def bottles(n)
    n == 1 ? "#{words(n)} bottle" : "#{words(n)} bottles"
  end

end