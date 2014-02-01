# **********************
# Largest prime factor
# Problem 3
# **********************
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?
# **********************

#***********************************
# The 'feels like cheating' Ruby way
#***********************************

require 'prime'

num = 600851475143

primes = num.prime_division

answer = primes.flatten.sort![-1]