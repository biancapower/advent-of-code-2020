file = File.open("3-input.txt")
@data = file.readlines.map(&:chomp)

@counter = (0..@data[0].length-1).to_a

def count_trees(across,down)
  loopy = @counter.cycle
  loopy.next
  
  sum = 0
  line = down

  while line < @data.length
    x = 0
    
    across.times {x = loopy.next}
    
    sum +=1 if @data[line][x] == "#"
    
    line += down
  end

  sum
end

p count_trees(1,1) *
  count_trees(3,1) * 
  count_trees(5,1) * 
  count_trees(7,1) * 
  count_trees(1,2)
