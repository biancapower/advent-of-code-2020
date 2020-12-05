file = File.open("4-input.txt")
passport_data = file.read.split("\n\n").to_a
passport_data.map!{|x| x.gsub(/\n/, " ")}#.split(" ")} # clean up data

patterns = [ # required fields as regex
  /(bry:)(19[2-8][0-9]|199[0-9]|200[0-2])/,
  /(iyr:)(201[0-9]|2020)/,
  /(eyr:)(202[0-9]|2030)/,
  /(hgt:)(((1[5-8][0-9]|19[0-3])(cm))|((59|6[0-9]|7[0-6])(in)))/,
  /(hcl:#)([0-9]|[a-f]){6}/,
  /(ecl:)(amb|blu|brn|gry|grn|hzl|oth)/,
  /(pid:)(\d{9})/
]

# for i in 0..passport_data.length - 1
#   input = passport_data[i]
#   p patterns.all? { |pattern| pattern.match?(input) }
# end

# p passport_data
p input = passport_data[1]
p patterns.all? { |pattern| pattern.match?(input) }

=begin
byr (Birth Year) - four digits; at least 1920 and at most 2002.
  (bry:)(19[2-8][0-9]|199[0-9]|200[0-2])
iyr (Issue Year) - four digits; at least 2010 and at most 2020. 
  (iyr:)(201[0-9]|2020)
eyr (Expiration Year) - four digits; at least 2020 and at most 2030.
  (eyr:)(202[0-9]|2030)
hgt (Height) - a number followed by either cm or in:
  If cm, the number must be at least 150 and at most 193.
  If in, the number must be at least 59 and at most 76.
    (hgt:)(((1[5-8][0-9]|19[0-3])(cm))|((59|6[0-9]|7[0-6])(in)))
hcl (Hair Color) - a # followed by exactly six characters 0-9 or a-f.
  (hcl:#)([0-9]{6}|[a-f]{6}) 
ecl (Eye Color) - exactly one of: amb blu brn gry grn hzl oth.
  (ecl:)(amb|blu|brn|gry|grn|hzl|oth)
pid (Passport ID) - a nine-digit number, including leading zeroes.
  (pid:)(\d{9})
cid (Country ID) - ignored, missing or not.
=end