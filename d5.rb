def matrix_region_sum(matrix, top_left_coords, bottom_right_coords)
  sum = 0
  tl = top_left_coords
  br = bottom_right_coords

  tl[0].upto(br[0]) do |row|
    tl[1].upto(br[1]) do |col|
      sum += matrix[row][col]
    end
  end
  sum
end

def merge_sort(array)
  return array if array.length < 2

  mid_idx = array.length/2

  left = merge_sort(array.take(mid_idx))
  right = merge_sort(array.drop(mid_idx))
  merge(left,right)
end


def merge(left,right)
  results = []
  until left.empty? || right.empty?
    if left[0] < right[0]
      results << left.shift
    elsif left[0] == right[0]
      results << left.shift
    elsif left[0] > right[0]
      results << right.shift
    end
  end

  results + left + right
end

def binary_search(array, target)
  return nil if array.empty?

  mid_idx = array.length/2

  if array[mid_idx] > target
    binary_search(array.take(mid_idx), target)
  elsif array[mid_idx] == target
    mid_idx
  elsif array[mid_idx] < target
    result = binary_search(array.drop(mid_idx + 1), target)
    result.nil? ? nil : result + 1 + mid_idx
  end
end

def productify(array)
  products = Array.new(array.length, 1)

  lower_prod = 1
  0.upto(array.length-1) do |el|
    products[el] = lower_prod * products[el]
    lower_prod *= array[el]
  end

  upper_prod = 1

  (array.length-1).downto(0) do |el|
    products[el] = upper * products[el]
    upper_prod *= array[el]
  end

  products
end
