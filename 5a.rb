file = File.open("5-input.txt")
data = file.readlines.map(&:chomp)

# for line in 0..data.length - 1
  row_num = (0..127).to_a

  for i in 0..6
    # case data[line][i]
    case data[0][i]
    when "F"  # lower half
      row_num = (row_num[0]..((row_num.length-1)/2)).to_a
      p "F: #{i}, Row Num: #{row_num}"
    when "B"  # upper half 
      row_num = ((row_num.length/2)..row_num[-1]).to_a
      p "B: #{i}, Row Num: #{row_num}"
    else
      p "error: #{data[line][i]}"
    end
  end
  p row_num
# end
# pp data