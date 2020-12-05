file = File.open("3-input.txt")
@data = file.readlines.map(&:chomp)

@counter = (0..@data[0].length-1).to_a

def count_trees(across,down)
  loopy = @counter.cycle
  loopy.next
  
  sum = 0
  # line = down
  i = down

  # for line in down..@data.length - 1  
  while i < @data.length
    x = 0
    
    across.times {x = loopy.next}
    
    sum +=1 if @data[i][x] == "#"
    # line += (down - 1) if !(line >= @data.length) # FIXME: not working for down = 2
    
    i += down
    # i+=1
  end

  sum
end

p count_trees(1,1)
p count_trees(3,1)
p count_trees(5,1)
p count_trees(7,1)
p count_trees(1,2)

p count_trees(1,1) * count_trees(3,1) * count_trees(5,1) * count_trees(7,1) * count_trees(1,2)
