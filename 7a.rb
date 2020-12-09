data = File.open("7-input.txt").readlines.map(&:chomp).map!{|x| x.split(" contain ")}
gold = "shiny gold"

all_rules = {}

for i in 0...data.length
  all_rules[data[i][0]] = data[i][1]  
end

bag_rules = all_rules.transform_values do |value| 
  value.split(", ") 
end  

pp bag_rules