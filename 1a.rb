# open the file
file = File.open("1a-input.txt")
# turn file data into an array of data
file_data = file.readlines.map(&:to_i)

nums = []

i = 0
while nums.length < 2
  nums << file_data[i] if file_data.include?(2020 - file_data[i])
  i += 1
end

p nums[0] * nums[1]