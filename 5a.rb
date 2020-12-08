file = File.open("5-input.txt")
@data = file.readlines.map(&:chomp)

@total = []

def analyse(min, max, i_start, i_end, lower_letter, upper_letter)

  for i in i_start..i_end
    # case @data[line][i]
    case @data[0][i]
    when lower_letter  # lower half
      max = ((max + min) / 2.0).floor
    when upper_letter  # upper half 
      min = ((max + min) / 2.0).ceil
    else
      # p "error: #{@data[line][i]}"
    end
    p "#{i}: #{@data[0][i]}, Max: #{max}, Min: #{min}"
  end
  @total << (min + max) / 2

end

# for line in 0..@data.length - 1

  analyse(0, 127, 0, 6, "F", "B") # rows
  analyse(0, 7, 7, 9, "L", "R") # cols

  # p row_num
# end
pp @total[0]*8 + @total[1]
