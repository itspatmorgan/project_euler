# ***********************
# 10001st prime
# Problem 7
# ***********************
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10_001st prime number?
# ***********************

# Eratosthenes sieve algorithm for finding primes
# This solution is slow and calculation heavy, but finds the correct answer

class Prime_num
  def sieve(n)
    nums = [nil, nil, *2..n]
    (2..Math.sqrt(n)).each do |i|
      (i**2..n).step(i){|m| nums[m] = nil} if nums[i]
    end
    nums.compact
  end
end

prime = Prime_num.new

# played around with prime.sieve(n) to find a reasonable starting place

n = 100_001
until prime.sieve(n).length == 10001
  n+=2
end

print n