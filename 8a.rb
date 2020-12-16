data = File.open("8-input.txt").readlines.map(&:chomp).map!{|x| x.split(" ")}

# convert numbers to ints
for i in data
  i[1] = i[1].to_i
end

accumulator = 0

for i in 0...data.length
  case data[i][0]
  when "acc"
    p data[i]
    accumulator += data[i][1]
  when "jmp"
    p data[i]
    accumulator += data[i][1]
    i += data[i][1]
  when "nop"
    p data[i]
  end
  p i
  pp accumulator
end
# pp data