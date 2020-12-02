# open the file
file = File.open("1a-input.txt")
# turn file data into an array of data
file_data = file.readlines.map(&:to_i)

p file_data