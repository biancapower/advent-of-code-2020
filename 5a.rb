file = File.open("5-input.txt")
data = file.readlines.map(&:chomp)

# for line in 0..data.length - 1
  row_min = 0 
  row_max = 127

  for i in 0..6
    # case data[line][i]
    case data[0][i]
    when "F"  # lower half
      row_max = ((row_max + row_min) / 2.0).floor
    when "B"  # upper half 
      row_min = ((row_max + row_min) / 2.0).ceil
    else
      p "error: #{data[line][i]}"
    end
    # p "#{data[0][i]}: #{i}, Row Max: #{row_max}, Row Min: #{row_min}"
    row_num = (row_min + row_max) / 2
  end

  col_min = 0
  col_max = 7

  for i in 7..9
    # TODO: same as above with L == F, R == B
  end

  p row_num
# end
# pp data