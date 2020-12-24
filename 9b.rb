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


# find a range of sequential numbers within @data that sum to invalid_sum
def subarray_sum(arr, sum)
  current_sum = arr[0]
  start = 0

  i = 1
  while i <= arr.length 
    while current_sum > sum
      current_sum = current_sum - arr[start] 
      start += 1
    end
    
    if current_sum == sum
      p "Sum found between indexes #{start} and #{i-1}"
      return @data[start, i-1-start]
    elsif current_sum < sum
      current_sum = current_sum + arr[i]
    else
      p "No valid subarray"
      return false
    end

    i += 1
  end
end

contiguous_range = subarray_sum(@data, invalid_sum)

# add together the smallest and largest
p contiguous_range.max + contiguous_range.min