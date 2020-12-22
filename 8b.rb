@data = File.open("8-input.txt").readlines.map(&:chomp).map!{|x| x.split(" ")}

# convert numbers to ints
for i in @data
  i[1] = i[1].to_i
end

# method to check for a loop
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

  if i >= @data.length - 1
    return "yay"
  else
    return i
  end
end
    

# loop through data
# when it gets to a nop
  # change it to a jmp
  # run method to check for a loop
    # if loop, go to the next nop
    # if not a loop, return accumulator
for d in @data
  if d[0] == "nop"
    d[0] = "jmp"
  elsif d[0] == "jmp"
    d[0] = "nop"
  end

  p check_for_loop
end

# NOTE: @data.length == 656
# FIXME: never going past the end of the @data array
# TODO: step through demo data