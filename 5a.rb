file = File.open("5-input.txt")
@data = file.readlines.map(&:chomp)

@total = [0,0]

def analyse(min, max, i_start, i_end, lower_letter, upper_letter, line, place)

  for i in i_start..i_end
    case @data[line][i]
    # case @data[0][i]
    when lower_letter  # lower half
      max = ((max + min) / 2.0).floor
    when upper_letter  # upper half 
      min = ((max + min) / 2.0).ceil
    end
    p "#{i}: #{@data[0][i]}, Max: #{max}, Min: #{min}"
  end
  
  @total[place] = min if @total[place] < min
  # FIXME: Major bug. This is replacing only the row or column, needs to replace both IF it will result in a larger seat ID 

end

for line in 0...@data.length

  analyse(0, 127, 0, 6, "F", "B", line, 0) # rows
  analyse(0, 7, 7, 9, "L", "R", line, 1) # cols

  # p row_num
  pp @total[0]*8 + @total[1]
end
pp @total[0]*8 + @total[1]