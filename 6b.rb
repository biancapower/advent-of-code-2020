sum = 0

letters = ("a".."z").to_a

data = File.open("6-input.txt").read.split("\n\n").to_a.map!{|x| x.gsub(/\n/,"")}

for l in 0...letters.length
  p letters[l] if data[-1].count(letters[l]) == 3
end

pp data[-1]