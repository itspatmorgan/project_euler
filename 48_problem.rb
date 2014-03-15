# -----------------------------
# Self powers
# Problem 48
# -----------------------------
# The series, 1^1 + 2^2 + 3^3 + ... + 10^10 = 10405071317.
# Find the last ten digits of the series, 1^1 + 2^2 + 3^3 + ... + 1000^1000.
# -----------------------------

timer_start = Time.now
sum = 0

1.upto(1000) do |number|
  sum += (number ** number)
end

puts answer = sum.to_s.slice(-10, 10)
puts "Completed in: #{(Time.now - timer_start)*1000} milliseconds"