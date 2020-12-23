@data = File.open("9-input.txt").readlines.map(&:chomp).map(&:to_i)

def contains_pair_for_sum?(arr, n)
  !!arr.uniq.combination(2).detect { |a, b| a + b == n }
end

def invalid_sum
  i = 25
  while i < @data.length - 1
    current = @data[i]
    range = @data[i-25, 25]

    return @data[i] if !contains_pair_for_sum?(range, current)

    i += 1
  end
end

p invalid_sum

# find a range of sequential numbers within @data that sum to invalid_sum
# add together the smallest and largest
  # arr.sort!
  # arr.min + arr.max