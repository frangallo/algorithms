class Array
  def heap_sort
    return self if self.length < 2
    heapify!
    p self
    unheapify!
    self
  end


  def heapify!
    each_index do |current|
      while heapify_up!(current)
        swap!(current,parent(current))
        current = parent(current)
      end
    end
  end

  def unheapify!
    each_index do |idx|
      heap_length = length - 1 - idx
      swap!(0, heap_length)
      current = 0
      while heapify_down!(current, heap_length)
        child = children(current, heap_length).min_by{|idx| self[idx]}
        swap!(current, child)
        current = child
      end
    end
  end

  def heapify_down!(idx, heap_length)
    child = children(idx, heap_length).min_by{|idx| self[idx]}
    self[idx] > self[child] if child
  end

  def heapify_up!(idx)
    parent = parent(idx)
    self[idx] < self[parent] && idx > 0
  end

  def swap!(idx1, idx2)
    self[idx1], self[idx2] = self[idx2], self[idx1]
  end

  def parent(idx)
    (idx-1)/2
  end

  def children(idx,len)
    [(idx*2) + 1, (idx*2) + 2].select{|el| el.between?(0,len-1)}
  end
end


def qs(array,start,last)
  if start >= last
    return array
  else
    pivot = random_partion(array,start,last)
    qs(array,start,pivot-1)
    qs(array,pivot+1,last)
  end
end

def random_partion(array,start,last)
  rand_idx= rand(start..last)
  array[rand_idx], array[last] = array[last], array[rand_idx]
  partion(array,start,last)
end

def partion(array, start, last)
  pivot = array[last]
  pivot_idx = start
  start.upto(last-1) do |idx|
    if array[idx] < pivot
      array[idx], array[pivot_idx] = array[pivot_idx], array[idx]
      pivot_idx +=1
    end
  end
  array[-1], array[pivot_idx] = array[pivot_idx], array[-1]
  pivot_idx
end
