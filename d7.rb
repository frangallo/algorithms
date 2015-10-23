def weighted_random_index(array)
  total_sum = array.inject(:+)
  value = rand(total_sum)

  cummulative_sum = 0
  array.each_with_index do |el, idx|
    cummulative_sum += el
    return idx if value < cummulative_sum
  end
end

def move_zeros(array)
  current_index = 0
  num_zeros = 0

  while current_index < (array.length - num_zeros)
    current_value = array[current_index]

    if current_value != 0
      current_index += 1
      next
    end

    back = array.length - 1 - num_zeros
    array[current_index], array[back] =
      array[back], array[current_index]
    num_zeros += 1
  end

  array
end

def look_and_say(array)
  results = []
  count = 0
  number = 0

  array.each_with_index do |el, idx|
    if idx == 0
      count,number = 1,el
    elsif el == number
      count+= 1
    else
      results << [count,number]
      count = 1
      number = el
    end
  end
  results

end
