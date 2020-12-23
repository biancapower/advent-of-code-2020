@data = File.open("9-input.txt").readlines.map(&:chomp).map(&:to_i)
# pp @data

def valid_sum?
  i = 25
  while i < 27
    current = @data[i]
    range = @data[i-25, 25]

    # check current is the sum of two numbers from range

    i += 1
  end
end
valid_sum?