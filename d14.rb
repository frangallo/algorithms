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
