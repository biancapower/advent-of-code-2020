file = File.open("3-input.txt")
@data = file.readlines.map(&:chomp)

@counter = (0..@data[0].length-1).to_a
@sum = 0

def count_trees
  loopy = @counter.cycle
  loopy.next

  for line in 1..@data.length - 1  
    loopy.next
    loopy.next 
    x = loopy.next
    
    @sum +=1 if @data[line][x] == "#"
  end
end

count_trees
p @sum