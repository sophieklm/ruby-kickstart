# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}


#a.values_at(* a.each_index.select {|i| i.even?})

#a.values_at(* a.each_index.select {|i| i.odd?})

def staircase(n)
  output = {}
  1.upto n do |i| 
    next if i.even? # skips even numbers for hash keys
    array = Array.new(i) { |x| x + 1 } # creates new array of integers
    array = array.select {|x| x.even?} # selects only even numbers in that array for each key
    output[i] = array
  end
  output
end
  