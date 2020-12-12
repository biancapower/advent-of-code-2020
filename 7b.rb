data = File.open("7-input.txt").readlines.map(&:chomp).map!{|x| x.split(" contain ")}
gold = "shiny gold"

@bag_rules = {}

########## PROCESS DATA ##########
for i in 0...data.length
  @bag_rules[data[i][0]] = data[i][1]  
end

@bag_rules = @bag_rules.transform_keys do |key|
  key = key[0...-5]
end

class Array
  def hashify
    h = {}
    for i in self
      h[i[2..i.length]] = i[0]
    end
    return h
  end
end

@bag_rules = @bag_rules.transform_values do |value| 
  value.split(", ").map!{|x| x.gsub(/(bag)s?\.?/, "")}.map!{|y| y.chop}.hashify
end

########## END PROCESS DATA ##########

@container_colours = [gold]

def colour_checker(colour)
  @bag_rules.each do |k, v|
    if v.include?(colour)
      @container_colours << k
    end
  end
end

for c in @container_colours
  colour_checker(c)
end
    
# pp @container_colours.uniq.count - 1
pp @bag_rules