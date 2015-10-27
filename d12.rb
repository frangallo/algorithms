def next_largest(node)
if node.right
  return left_most_node(node.right)
end

until true
  parent = node.parent
  if parent.nil?
    return nil
  elsif parent.left == node
    return parent
  else
    node = parent
  end
end

def left_most_node(node)
  while node.left
    node = node.left
  end
  return node
end


def isBalancedTree?(node)
  return balancedWeight(node) != -1
end

def balancedWeight(node)
  return 0 if node.nil?
  left = balancedWeight(node.left)
  right = balancedWeight(node.right)


  if (left == -1 || right == -1)
    return -1
  elsif Math.abs(left - right) > 1
    return -1
  end

  return left + right + 1
end
