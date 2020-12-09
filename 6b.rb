data = File.open("6-input.txt").read.split("\n\n")
data[-1].chop!

letters = ("a".."z").to_a
sum = 0

for i in 0...data.length
  for l in 0...letters.length
    sum += 1 if data[i].count(letters[l]) == data[i].count("\n") + 1
  end
end

p sum