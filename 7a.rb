data = File.open("7-input.txt").readlines.map(&:chomp).map!{|x| x.split(" contain ")}
gold = "shiny gold"

bag_rules = {}

########## PROCESS DATA ##########
for i in 0...data.length
  bag_rules[data[i][0]] = data[i][1]  
end

bag_rules = bag_rules.transform_values do |value| 
  value.split(", ").map!{|x| x.gsub(/\d\s|(bag)s?\.?/, "")}.map!{|y| y.chop}
end

bag_rules = bag_rules.transform_keys do |key|
  key = key[0...-5]
end
########## END PROCESS DATA ##########

container_colours = []

bag_rules.each do |k, v| #TODO: Turn this into a method to pass colours into
  if v.include?(gold)
    container_colours << k
  end
end

pp container_colours