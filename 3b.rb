# open the file
file = File.open("3-input.txt")
# turn file data into an array of data
data = file.readlines.map(&:chomp)

sum = 0
x = 0

for line in 0..data.length - 1
  x += 3
  while x > data[line].length
    data[line] *= 2 # ensure the line is long enough (hacky, longer than needed)
  end
  
  sum +=1 if data[line][x] == "#"
end

p sum