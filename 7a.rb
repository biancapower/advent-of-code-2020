data = File.open("7-input.txt").readlines.map(&:chomp).map!{|x| x.split(" contain ")}
gold = "shiny gold"

pp data