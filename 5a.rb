file = File.open("5-input.txt")
@data = file.readlines.map(&:chomp)

@total = Array.new(1,0)

def analyse(min, max, i_start, i_end, lower_letter, upper_letter, line, place)

  for i in i_start..i_end
    case @data[line][i]
    when lower_letter
      max = ((max + min) / 2.0).floor
    when upper_letter 
      min = ((max + min) / 2.0).ceil
    end
  end
  
  # if the subarray doesn't exist yet, create it
  if place == 0
    @total[line] = Array.new(2, 0)
  end

  @total[line][place] = min
end

for line in 0...@data.length
  analyse(0, 127, 0, 6, "F", "B", line, 0) # rows
  analyse(0, 7, 7, 9, "L", "R", line, 1) # cols
end

highest = 0

for i in 0...@total.length
  score = @total[i][0]*8 + @total[i][1]
  highest = score if score > highest
end

p highest