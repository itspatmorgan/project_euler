# -----------------------
# Number letter counts
# Problem 17
# -----------------------
# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.
# -----------------------

a_hundred = {hundred: 7} # x900
a_thousand = {thousand: 8} # x1

a_and = {aand: 3} # x891

ones = {
  one: 3, # x100 + x9 per hundred(x90)
  two: 3,
  three: 5,
  four: 4,
  five: 4,
  six: 3,
  seven: 5,
  eight: 5,
  nine: 4,
}

teens = {
  ten: 3, # x10 overall
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
  twenty: 6, # x10 per hundred, x9 = x90
  thirty: 6,
  forty: 5,
  fifty: 5,
  sixty: 5,
  seventy: 7,
  eighty: 6,
  ninety: 6,
}

a = ones.values.map{|x| x*190}.inject(:+)
b = teens.values.map{|x| x*10}.inject(:+)
c = tens.values.map{|x| x*100}.inject(:+)
d = a_hundred[:hundred] * 900
e = a_and[:aand] * 891
f = a_thousand[:thousand] + 3

letters = [a,b,c,d,e,f]

puts answer = letters.inject(:+)