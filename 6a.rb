sum = 0
File.open("6-input.txt").read.split("\n\n").to_a.map!{|x| x.gsub(/\n/,"")}.each{|s| sum += s.split("").uniq.count}

p sum