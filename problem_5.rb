# ***********************
# Smallest multiple
# Problem 5
# ***********************
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
# ***********************
#
# Initial strategy:
  # start counting at 20, only count multiples of 20.
  # break when (multiple of 20) % (1..20) == 0
  # print that number
# Thoughts after getting solution:
  # Must be a more concise way to check if i % (1..20)
#************************

# First answer
i=20
until i % 2 == 0 && i % 3 == 0 && i % 4 == 0 && i % 5 == 0 && i % 6 == 0 && i % 7 == 0 && i % 8 == 0 && i % 9 == 0 && i % 10 == 0 && i % 11 == 0 && i % 12 == 0 && i % 13 == 0 && i % 14 == 0 && i % 15 == 0 && i % 16 == 0 && i % 17 == 0 && i % 18 == 0 && i % 19 == 0
  i += 20
end

puts i


# Can only check against (11..19) and get same answer
i=20
until i % 11 == 0 && i % 12 == 0 && i % 13 == 0 && i % 14 == 0 && i % 15 == 0 && i % 16 == 0 && i % 17 == 0 && i % 18 == 0 && i % 19 == 0
  i += 20
end

puts i