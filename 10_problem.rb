# -----------------------
# Summation of primes
# Problem 10
# -----------------------
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.
# -----------------------

# Eratosthenes sieve algorithm for finding primes

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

# Solve

answer = prime.sieve(2_000_000).reduce(:+)

puts answer