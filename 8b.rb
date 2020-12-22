@data = File.open("8-input.txt").readlines.map(&:chomp).map!{|x| x.split(" ")}

# convert numbers to ints
for i in @data
  i[1] = i[1].to_i
end

# these are in the initial infinite loop
# one of these needs to change
nops = []
jmps = []

# What leads to an infinite loop?
# accumulator = 0
visited = []

i = 0
while !visited.include?(i)
  visited << i
  case @data[i][0]
  when "nop"
    nops << i
    i += 1
  when "acc"
    # accumulator += @data[i][1]
    i += 1
  when "jmp"
    jmps << i
    i += @data[i][1]
  end
end

@accumulator = 0

def is_it_looping?
  is_unique = []

  j = 0
  while !is_unique.include?(j)
    is_unique << j
    case @data[j][0]
    when "nop"
      j += 1
    when "acc"
      @accumulator += @data[j][1]
      j += 1
    when "jmp"
      j += @data[j][1]
    end
  end
  return false
end
is_it_looping?
p @accumulator