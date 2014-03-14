# ----------------------
# Names scores
# Problem 22
# ----------------------
# Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.

# For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.

# What is the total of all the name scores in the file?
# ----------------------

file = File.new('names.txt', 'r')
data = file.read
file.close

# Alphabetical array of names
names = data.gsub("\"", "").split(",").sort

timer_start = Time.now

sum = 0

names.each do |name|
  index_score = names.index(name) + 1
  letter_score = 0

  letters = name.downcase.split("")
  letters.each do |letter|
    case letter
    when "a"
      letter_score += 1
    when "b"
      letter_score += 2
    when "c"
      letter_score += 3
    when "d"
      letter_score += 4
    when "e"
      letter_score += 5
    when "f"
      letter_score += 6
    when "g"
      letter_score += 7
    when "h"
      letter_score += 8
    when "i"
      letter_score += 9
    when "j"
      letter_score += 10
    when "k"
      letter_score += 11
    when "l"
      letter_score += 12
    when "m"
      letter_score += 13
    when "n"
      letter_score += 14
    when "o"
      letter_score += 15
    when "p"
      letter_score += 16
    when "q"
      letter_score += 17
    when "r"
      letter_score += 18
    when "s"
      letter_score += 19
    when "t"
      letter_score += 20
    when "u"
      letter_score += 21
    when "v"
      letter_score += 22
    when "w"
      letter_score += 23
    when "x"
      letter_score += 24
    when "y"
      letter_score += 25
    when "z"
      letter_score += 26
    end
  end

  sum += (index_score*letter_score)
end

puts sum
puts "Completed in: #{(Time.now - timer_start)*1000} milliseconds"