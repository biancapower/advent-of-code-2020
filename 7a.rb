data = File.open("7-input.txt").readlines.map(&:chomp).map!{|x| x.split(" contain ")}
gold = "shiny gold"

bags_rules = {}

for i in 0...data.length
  bags_rules[data[i][0]] = data[i][1]  
end
# pp data
pp bags_rules