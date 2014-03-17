# -----------------------------
# Digit factorials
# Problem 34
# -----------------------------
# 145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.

# Find the sum of all numbers which are equal to the sum of the factorial of their digits.

# Note: as 1! = 1 and 2! = 2 are not sums they are not included.
# -----------------------------

# Note to self: This problem is super similar to problem 30

# Simple recursive factorial algorithm
def factorial(num)
  if num < 0 
    -1
  elsif num == 0
    1
  else
    (num * factorial(num-1))
  end
end

timer_start = Time.now

factorions = []

3.upto(100_000) do |number|
  array = number.to_s.split("").map {|x| x.to_i}
  sum = array.map{|x| factorial(x)}.inject(:+)
  if sum == number
    factorions << number
  end
end

print factorions
puts total = factorions.inject(:+)

puts "Completed in: #{(Time.now - timer_start)*1000} milliseconds"

