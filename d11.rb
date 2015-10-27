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

def cyclic1?(first_link)
  set = []

  current_link = first_link
  until current_link.nil?
    # if list is cyclic, must loop back on itself eventually
    return true if set.include?(current_link)
    set << current_link

    current_link = current_link.next
  end

  false
end

def cyclic2?(first_link)
  current_link1 = first_link
  current_link2 = first_link
  until current_link.nil?
    current_link1 = current_link1.next
    2.times do
      current_link2 = current_link2.next
    end
    return true if current_link2 == current_link1
  end
  false
end
