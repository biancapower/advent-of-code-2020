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
      p "#{current_sum} is too large"
      current_sum = current_sum - arr[start] 
      start += 1
      p "now current_sum is #{current_sum}, start is now #{start}"
    end
    
    if current_sum == sum
      p "Sum found between indexes #{start} and #{i-1}"
      return true
    elsif current_sum < sum#i < arr.length 
      p "#{current_sum} isn't there yet"
      current_sum = current_sum + arr[i]
    else
      p "No valid subarray"
      return false
    end

    i += 1
  end
end

subarray_sum(@data, invalid_sum)
# p @data[0]
p "invalid: #{invalid_sum}"
# add together the smallest and largest
  # arr.sort!
  # arr.min + arr.max