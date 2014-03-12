## -----------------------------
## 1000-digit Fibonacci number
## Problem 25
## -----------------------------
## What is the first term in the Fibonacci sequence to contain 1000 digits?
## -----------------------------

class Fibonacci
  def fib(nth_fib, fib_2 = 1, fib_1 = 0)
    if nth_fib == 0
      fib_1
    elsif nth_fib == 1
      fib_2
    else
      fib(nth_fib-1, fib_1+fib_2, fib_2)
    end
  end
end

x = Fibonacci.new

i = 0
until x.fib(i).to_s.length == 1000
  i += 1
end

puts i