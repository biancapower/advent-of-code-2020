file = File.open("4-input.txt")
passport_data = file.read.split("\n\n").to_a

required_fields = ["byr:", "iyr:", "eyr:", "hgt:", "hcl:", "ecl:", "pid:"]

sum = 0

for i in 0..passport_data.length - 1
  field_matches = 0

  for field in 0..required_fields.length - 1
    field_matches += 1 if passport_data[i].include?(required_fields[field])
  end

  sum += 1 if field_matches == required_fields.length
end

p sum