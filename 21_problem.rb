# **********************
# Largest prime factor
# Problem 3
# **********************
# Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

# Evaluate the sum of all the amicable numbers under 10000.
# **********************
require 'pry'

def proper_divisors_of(number)
  # up to, but not including, the number
  # select all numbers that divide evenly into the argument
  (1...number).select {|n| number % n == 0 }
end

amicables = []

2.upto(9999) do |amicable|

  if !amicables.include?(amicable)

    # sum all proper divisors of a number
    sum_1 = proper_divisors_of(amicable).inject(:+)
    sum_2 = proper_divisors_of(sum_1).inject(:+)

    if amicable == sum_2 and amicable != sum_1
      amicables << amicable
      amicables << sum_1
    end

  end
end

puts answer = amicables.inject(:+)
