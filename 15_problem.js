// -----------------------------
// Lattice paths
// Problem 15
// -----------------------------
// Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
// How many such routes are there through a 20×20 grid?
// -----------------------------
// Research:

// "The number of lattice paths from the origin (0,0) to a point (a,b) is the binomial coefficient"
// -- http://mathworld.wolfram.com/BinomialCoefficient.html

// The binomial coefficient (a+b a) equates to (a+b)!/a!^2
// So the example of a 2x2 grid works out to (2+2)!/2!^2 or 24/4, which equals 6.
// Correspondingly, the number of routes through a 20x20 grid is given by (20+20)!/20!^2

// -----------------------------
// Solution:

// Simple recursive factorial algorithm for use in solving binomial coefficient
function factorial(num) {
  if (num < 0 ) {
    return -1;
  }
  else if (num === 0) {
    return 1;
  }
  else {
    return (num * factorial(num-1))
  }
}

// Solved with a function
function numberOfPaths(num, n) {
  return (factorial(num+n)/(factorial(n)*factorial(n)));
}

numberOfPaths(20,20);

// Broken down Step by step
var numerator = factorial(40);
var denominator = factorial(20) * factorial(20);
var answer = numerator/denominator;
console.log(answer);