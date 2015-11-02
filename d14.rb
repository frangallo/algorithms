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
