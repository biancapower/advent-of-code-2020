file = File.open("3-input.txt")
@data = file.readlines.map(&:chomp)

@counter = (0..@data[0].length-1).to_a

def count_trees(across,down)
  loopy = @counter.cycle
  loopy.next
  
  sum = 0

  for line in down..@data.length - 1  
    x = 0
    across.times {x = loopy.next}
    
    sum +=1 if @data[line][x] == "#"
  end

  sum
end

p count_trees(1,1)
p count_trees(3,1)
p count_trees(5,1)
p count_trees(7,1)
p count_trees(1,2)
