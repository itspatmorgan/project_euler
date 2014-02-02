# **************************
# Largest palindrome product
# Problem 4
# **************************
# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

# Upper bound ~> 999 * 999 = 998_001 
# largest palindromic number below that bound = 997799

range = (900..999).to_a.reverse
palindromes = []

range.each do |x|
  range.each do |y|
    product = x * y 
    if product.to_s == product.to_s.reverse
      palindromes << product
    end
  end
end

answer = palindromes.max