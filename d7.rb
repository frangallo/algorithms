def weighted_random_index(array)
  total_sum = array.inject(:+)
  value = rand(total_sum)

  cummulative_sum = 0
  array.each_with_index do |el, idx|
    cummulative_sum += el
    return idx if value < cummulative_sum
  end
end
