file = File.open("5-input.txt")
data = file.readlines.map(&:chomp)

# for line in 0..data.length - 1
  row_min = 0 
  row_max = 127

  for i in 0..6
    # case data[line][i]
    case data[0][i]
    when "F"  # lower half
      row_max = row_max / 2
      # p "F: #{i}, Row Max: #{row_max}"
    when "B"  # upper half 
      row_min = row_max / 2 
      # p "B: #{i}, Row Min: #{row_min}"
    else
      p "error: #{data[line][i]}"
    end
    p "#{data[0][i]}: #{i}, Row Max: #{row_max}, Row Min: #{row_min}"
  end
  # p row_num
# end
# pp data