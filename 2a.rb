# read in the file, line by line
# open the file
file = File.open("2a-input.txt")
# turn file data into an array of data
file_data = file.readlines.map(&:chomp)

# split each line on spaces
  # 2-13 t: llckxhfmtznptndcsx -> ["2-13", "t:" "llckxhfmtznptndcsx"]
file_data.map! {|x| x.split(" ")}

  # split arr[0] on - and convert to ints
    # [[2, 13], "t:" "llckxhfmtznptndcsx"]
# file_data.map! {|x| x[0].split("-")}
file_data.map {|x| x.map! {|y| y.split("-")}}
file_data.map {|z| z[0].map! {|a| a.to_i}}

  # remove : from arr[1]
    # # [[2, 13], "t" "llckxhfmtznptndcsx"]
file_data.map {|z| z[1].map! {|a| a.chop}}

# does the letter in arr[1] appear in the string arr[2] between arr[0][0] and arr[0][1] times?
=begin # loop through file_data, the below are valid for each array within file_data
min = arr[0][0]
max = arr[0][1]
letter = arr[1]
password = arr[2]
=end

# REGEX - count number of matches

# return number of passwords valid
p file_data