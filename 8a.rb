data = File.open("8-input.txt").readlines.map(&:chomp).map!{|x| x.split(" ")}

# convert numbers to ints
for i in data
  i[1] = i[1].to_i
end

accumulator = 0

for i in data
  case i[0]
  when "acc"
    accumulator += i[1]
  when "jmp"
    p "jmp"
  when "nop"
    p "nop"
  end
end
# pp data