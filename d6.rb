def subsets(array)
  return [[]] if array.empty?
  subs = subset(array.take(array.length-1))
  newSubs = subs.map{|sub| sub + [array.last])}
  subs + newSubs
end


def longest_palindrome(str)
  best_palindrome_start = 0
  best_palindrome_len = 0

  0.upto(string.length -1).each do |start|
    len = best_palindrome_len + 1
    while start + len <= string.length
      if is_palindrome?(string, start, len)
        best_palindrome_start, best_palindrome_len = start, len
      end
      len +=1
    end
  end

  [best_palindrome_start, best_palindrome_start + best_palindrome_len -1]
end

def is_palindrome?(string, start, len)
  len.times do |i|
    if string[start + i] != string[(start + len -1) - i]
      return false
    end
  end

  true
end

def common_subsets(arr1,arr2)
  subsets(intersection3(arr1,arr2))
end

def can_win(array, idx)
  graph = Hash.new(|k,v| v = [])
  array.each_with_index do |el, idx|
    graph[idx] << el + idx if (el + idx).between?(0,array.length-1)
    graph[idx] << el - idx if (el - idx).between?(0,array.length-1)
  end

  win?(graph,idx)
end

def win?(graph, idx)
  seen = {}
  queue = graph[idx]

  until queue.empty?
    num = queue.shift
    next if seen[num]

    seen[num] = true
    return true if num == 0

    queue.concat(graph[num])
  end

  end
  false
end
