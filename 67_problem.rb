# -----------------------
# Maximum path sum II
# Problem 67
# -----------------------
# Find the maximum total from top to bottom in triangle.txt (right click and 'Save Link/Target As...'), a 15K text file containing a triangle with one-hundred rows.
# -----------------------

# NEW CODE FOR DEALING WITH TREE IN .txt FILE

file = File.new('triangle.txt', 'r')
data = file.read
file.close

rows = data.split("\n")

tree = rows.map do |x|
  x.split(" ").map{|x| x.to_i}
end

# ----------------------
# SAME CODE AS ANSWER TO PROJECT EULER 18
# ----------------------

timer_start = Time.now

(tree.length - 1).downto(0) do |row|
  0.upto(row-1) do |index|
    tree[row-1][index] += [tree[row][index], tree[row][index+1]].max
  end
end

puts tree[0][0]
puts "Completed in: #{(Time.now - timer_start)*1000} milliseconds"