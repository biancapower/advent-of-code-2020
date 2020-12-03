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

sum_valid_passwords = 0;

# REGEX - count number of matches
def count_em(string, substring)
  string.scan(/(?=#{substring})/).count
end

for i in 0..file_data.length - 1
  count = count_em(file_data[i][2][0], file_data[i][1][0])
  if count >= file_data[i][0][0] && count <= file_data[i][0][1]
    sum_valid_passwords += 1
  end
end

# return number of passwords valid
p sum_valid_passwords