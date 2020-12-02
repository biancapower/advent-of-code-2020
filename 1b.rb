# open the file
file = File.open("1a-input.txt")
# turn file data into an array of data
file_data = file.readlines.map(&:to_i)

threes = file_data.combination(3).to_a

nums = []

threes.each {|arr|
  nums = arr if arr.sum == 2020
}

p nums[0] * nums[1] * nums[2]

