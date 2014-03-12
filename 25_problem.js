// -----------------------------
// 1000-digit Fibonacci number
// Problem 25
// -----------------------------
// What is the first term in the Fibonacci sequence to contain 1000 digits?
// -----------------------------

// Tail recursive fibonacci function

function fib(starting_num, fib_2, fib_1) {
  var fib_1 = fib_1 || 0;
  var fib_2 = fib_2 || 1;
  if (starting_num === 0) {
    return fib_1;
  }
  if (starting_num === 1) {
    return fib_2;
  } 
  else {
    return fib(starting_num-1, fib_1+fib_2, fib_2);
  }
}

// Running into trouble with the way Javascript deals with big numbers
// for (i=0; i<1000; i++) {
//   if (fib(i).toString().length > 1000) {
//     break;
//   }
//   console.log(i);
// }