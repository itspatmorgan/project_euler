# Multiples of 3 and 5
# Problem 1
# If we list all the natural numbers below 10 that are multiples of 3 or 5, 
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

# ******************************
# First thought
# ******************************

nums = (1...1000).to_a

sum = 0
extra = 0

nums.each do |num|
  if num % 3 == 0
    sum += num
  end
  if num % 5 == 0 
    sum += num
  end
  if num % 15 == 0
    extra += num
  end
end

answer = sum - extra

# ******************************
# Refactored
# ******************************

nums = (1...1000).to_a

sum = 0

nums.each do |num|
  if num % 3 == 0 || num % 5 == 0
    sum += num
  end
end

puts "The answer is #{sum}"