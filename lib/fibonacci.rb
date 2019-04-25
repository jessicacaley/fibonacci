# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8

# Time complexity: ?
# Space complexity: ?

## this works but feels bad
# def fibonacci(n)
#   number_one = 0
#   number_two = 1
#   number_three = nil

#   return 0 if n == 0
#   raise ArgumentError if n < 0

#   (n - 1).times do |i|
#     number_three = number_one + number_two
#     number_one = number_two
#     number_two = number_three
#   end

#   return number_three
# end

def fibonacci(n)
  if n == 0
    return 0
  elsif n.to_i == 0 || n < 0
    raise ArgumentError
  end

  array = [0, 1]
  (n - 1).times do |i|
    number = array[-1] + array[-2]
    array << number
  end

  return array[-1]
end
