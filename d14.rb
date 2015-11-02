class Node
  attr_accessor :value, :next_el, :prev

  def initialize(val,next_el=nil, prev=nil)
    @value = val
    @next_el = next_el
    @prev = prev
  end

  def remove(val)
    if @value = val
      @prev.next = @next_el
    end
  end

  def insert(val)
    @next_el = Node.new(val,nil,self)
  end

end

class LinkedList
  attr_accessor :last, :first
  def initialize(value)
    @first = Node.new(value,nil,nil)
    @last = @first
  end

  def last
    @last.value
  end

  def first
    @first.value
  end

  def push(value)
    current = @first
    until (current.next).nil?
      current = current.next
    end

    current.insert(value)
    @last = current.next_el
  end

  def pop
    @last = @last.prev
  end
end

class Queue
  attr_accessor :first, :last, :hold

  def initialize
    @first = -1
    @last = -1
    @hold = []
  end

  def enqueue(value)
    if self.empty?
      @first, @last = 0,0
    else
      @last =+ 1
    end

    @hold[@last] = value
  end

  def dequeue(value)
    val = @hold[@first]
    @first += 1

    if @first == @last
      @first, @last = -1, -1
    end
    val
  end

  def empty?
    @first == -1 & @last == -1
  end
end

class Stack
  attr_accessor :top, :hold
  def initialize
    @top = -1
    @hold = []
  end

  def push(val)
    @top += 1
    @hold[@top] = val
  end

  def pop
    val = @hold[@top]
    @top -=1
    val
  end

end

class Heap
  attr_accessor :hold
  def initialize(array)
    array.each{|el| insert(el)}
    @hold = []
  end

  def parent(idx)
    [idx-1]/2
  end

  def children(idx)
    [(idx*2)+1, (idx*2)+2].select({|el| el.between?(0,@hold.length)})
  end

  def min
    @hold[0]
  end

  def heapify_up!
    current = array.length-1
    while current > 0
      parent_idx = parent(current)
      if @hold[current] < @hold[parent_idx]
        swap!(current, parent_idx)
        current = parent_idx
      else
        break
      end
    end
  end

  end

  def heapify_down!
    current = 0
    while current < array.length-1
      child_idx = children(current).min_by({|el| @hold[el]})
  end

  def swap!(idx1,idx2)
    @hold[idx1], @hold[idx2] = @hold[idx2], @hold[idx1]
  end

  def insert(val)
    @hold << val
    heapify_up!
    val
  end

  def pop_min
    temp = self.min
    heapify_down!
    temp
  end
end
