//*** Practice with Recursion ***//

// Absolute values of items in an array

nums = [2, -4, 3, -1, 23, -4, -54, 43, -21, 1, -1, 78, 22, -5, -9, 0, 11, 1, 3, 5, 2, -66, -23, -99, 0, 0, 0, 4, 3, 77, 982, 21, 1, 1, 1, -9, -75, 43, 76, -101, -12, -3, 54, 2, 0, 0, 3, 2, -111, 900, 78, 555, 45, 22, 112, 4334, -244444, -3421, -4433, -1111, 3, -32343434, -483473, -32, -223324, 422, 1213, 10, 27, 6789, -9, 0, -77, 0, 0, 1, -45, 38, 82, 821, 3452, 23843, -232, 43, 1, -1, 999, 1841, -1, -3, 0, -89, -29, 2387, 43, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, -12, -345, -2, 28, -123, 321, 9, -101, 89, 32, 1323, -133, 33, 12, 0 , 0, 999, -123441, -2900019318]

var new_array = []

function absolute(array) {
  if (new_array.length === array.length) {
    return new_array;
  }
  else {
    new_array.push(abs(array.shift(1)));
    doStuff(array);
  }
}

function abs(num){
  if (num < 0)
  {
    return num * -1;
  }
  else
  {
    return num;
  }
}

// Calculate factorials

function factorial (num) {
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

// Make next fib (really slow, )

function make_fib (num) {
  if (num < 0) {
    return -1;
  }
  else if (num === 0) {
    return 0;
  }
  else if (num === 1) {
    return 1;
  }
  else {
    return make_fib(num-1) + make_fib(num-2);
  }
}
// Make fibonnaci array

function fib_array (num, base) {
  base = base || [];
  if (num === 0) {
    return base;
  }
  else {
    base.unshift(make_fib(num));
    return fib_array(num-1, base);
  }
}