# -----------------------
# Number letter counts
# Problem 17
# -----------------------
# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.
# -----------------------

a_hundred = {hundred: 6}
a_thousand = {thousand: 8}

a_and = {a_and: 3}

ones = {
  one: 1,
  two: 3,
  three: 5,
  four: 4,
  five: 4,
  six: 3,
  seven: 5,
  eight: 5,
  nine: 4,
  ten: 3,
}

teens = {
  eleven: 6,
  twelve: 6,
  thirteen: 8,
  fourteen: 8,
  fifteen: 7,
  sixteen: 7,
  seventeen: 9,
  eighteen: 8,
  nineteen: 8,
}

tens = {
  twenty: 6,
  thirty: 5,
  forty: 5,
  fifty: 5,
  sixty: 5,
  seventy: 7,
  eighty: 6,
  ninety: 6,
}


