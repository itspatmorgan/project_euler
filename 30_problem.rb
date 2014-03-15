# -----------------------------
# Digit fifth powers
# Problem 30
# -----------------------------
# Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:

# 1634 = 1^4 + 6^4 + 3^4 + 4^4
# 8208 = 8^4 + 2^4 + 0^4 + 8^4
# 9474 = 9^4 + 4^4 + 7^4 + 4^4

# As 1 = 1^4 is not a sum it is not included.

# The sum of these numbers is 1634 + 8208 + 9474 = 19316.

# Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.
# -----------------------------


timer_start = Time.now

semi_narcissistic_nums = []

2.upto(1_000_000) do |number|
  array = number.to_s.split("").map {|x| x.to_i}
  sum = array.map{|x| x**5}.inject(:+)
  if sum == number
    narcissistic_nums << number
  end
end

print semi_narcissistic_nums
puts total = semi_narcissistic_nums.inject(:+)

puts "Completed in: #{(Time.now - timer_start)*1000} milliseconds"
