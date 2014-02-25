# ---------------------------
# Special Pythagorean triplet
# Problem 9
# ---------------------------
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a**2 + b**2 = c**2

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.
# ---------------------------

# This solution is still super heavy and slow, but it does get the answer #
require 'pry'

a = (3..997).to_a
b = (3..997).to_a
c = (3..997).to_a

answer = 0

a.each do |x|
  b.each do |y|
    c.each do |z|
      if (x+y+z == 1000) && (x*x + y*y == z*z)
        answer += (x*y*z)
        break
      end
    end
  end
end
