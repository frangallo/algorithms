class Array
  def heap_sort
    return self if self.length < 2
    heapify!
    unheapify!
    self
  end


  def heapify!
    each_index do |idx|
      current = idx
      while heapify_up!(idx)
        swap!(idx,parent(idx))
        current = parent(idx)
      end
    end
  end

  def unheapify!
    each_index do |idx|
      heap_length = length - 1 - idx
      swap!(idx, heap_length)
      current = idx
      while heapify_down!(idx, heap_length)
        child = children(idx, heap_length).min_by{|idx| self[idx]}
        swap!(current, child)
        current = child
      end
    end
  end

  def heapify_down!(idx)
    child = children(idx, heap_length).min_by{|idx| self[idx]}
    self[idx] > self[child]
  end

  def heapify_up!(idx)
    parent = parent(idx)
    self[idx] < self[parent] && idx > 0
  end

  def swap(idx1, idx2)
    self[idx1], self[idx2] = self[idx2], self[idx1]
  end

  def parent(idx)
    (idx-1)/2
  end

  def children(idx,len)
    [(idx1*2 + 1), (idx1*2 + 2)].select{|el| el.between(0,len)}
  end
end
