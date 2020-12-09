# get each group's input as an array
file = File.open("6-input.txt")
group_data = file.read.split("\n\n").to_a.map! {|x| x.gsub(/\n/,"")}

# arr.uniq.count
# sum these

p group_data