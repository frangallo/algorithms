def permutations(array)
  return [[]] if array.empty?
  parms = []

  array.length.times do |x|
    el = array[x]
    rest = array.take(x) + array.drop(x+1)

    result = permutations(rest).map{|parm| parm.unshift(el)}
    parms.concat(result)
  end
  parms

end


# [a,b]
