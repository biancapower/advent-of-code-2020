# open the file
file = File.open("3-input.txt")
# turn file data into an array of data
data = file.readlines.map(&:chomp)

sum = 0
x = 0

for line in 0..data.length - 1
  x += 3
  if x > data[line].length
    data[line] *= x # way too hacky, makes the lines extremely unnecessarily long
  end
  
  sum +=1 if data[line][x] == "#"
end

p sum