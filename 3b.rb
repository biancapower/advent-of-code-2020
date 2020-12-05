# open the file
file = File.open("3-input.txt")
# turn file data into an array of data
data = file.readlines.map(&:chomp)

pp data[-1][2]