file = File.open("5-input.txt")
@data = file.readlines.map(&:chomp)

def analyse(min, max, i_start, i_end, lower_letter, upper_letter)

  for i in i_start..i_end
    # case @data[line][i]
    case @data[0][i]
    when "F"  # lower half
      max = ((max + min) / 2.0).floor
    when "B"  # upper half 
      min = ((max + min) / 2.0).ceil
    else
      # p "error: #{@data[line][i]}"
    end
    # p "#{@data[0][i]}: #{i}, Row Max: #{max}, Row Min: #{min}"
    p row_num = (min + max) / 2
  end

end

# for line in 0..@data.length - 1

  analyse(0, 127, 0, 6, "F", "B") # rows
  analyse(0, 7, 7, 9, "L", "R") # cols

  # p row_num
# end
# pp @data
