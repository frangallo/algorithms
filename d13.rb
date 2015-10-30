def is_permutation?(str1, str2)
  letters = {}
  str2.each do |el|
    letters[el] = true
  end

  str1.each do |el|
    return false unless letters[el]
  end
  true
end
