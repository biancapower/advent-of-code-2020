data = File.open("8-demo.txt").readlines.map(&:chomp).map!{|x| x.split(" ")}

# convert numbers to ints
for i in data
  i[1] = i[1].to_i
end

accumulator = 0
visited = []

for i in 0...data.length
  break if visited.include?(i)

  case data[i][0]
  when "acc"
    accumulator += data[i][1]
  when "jmp"
    i += data[i][1]
    accumulator += data[i][1] if data[i][0] == "acc"
  end
  visited << i
end

p accumulator