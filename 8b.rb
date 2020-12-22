@data = File.open("8-input.txt").readlines.map(&:chomp).map!{|x| x.split(" ")}

# convert numbers to ints
for i in @data
  i[1] = i[1].to_i
end

def check_for_loop
  accumulator = 0
  visited = []

  i = 0
  while !visited.include?(i)
    visited << i
    case @data[i][0]
    when "nop"
      i += 1
    when "acc"
      accumulator += @data[i][1]
      i += 1
    when "jmp"
      i += @data[i][1]
    end
  end

  return accumulator
end
    

# loop through data
# when it gets to a nop
  # change it to a jmp
  # run method to check for a loop
    # if loop, go to the next nop
    # if not a loop, return accumulator



pp check_for_loop