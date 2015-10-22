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
