data = File.open("8-input.txt").readlines.map(&:chomp).map!{|x| x.split(" ")}

# convert numbers to ints
for i in data
  i[1] = i[1].to_i
end

# What leads to an infinite loop?
accumulator = 0
visited = []
nops = []
jmps = []

i = 0
while !visited.include?(i)
  visited << i
  case data[i][0]
  when "nop"
    nops << i
    i += 1
  when "acc"
    accumulator += data[i][1]
    i += 1
  when "jmp"
    jmps << i
    i += data[i][1]
  end
end
p accumulator