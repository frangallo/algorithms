class Node
  attr_accessor :value, :next, :prev

  def initialize(val,next_el=nil, prev=nil)
    @value = val
    @next = next_el
    @prev = prev
  end

  def remove(val)
    if @value = val
      @prev.next = @next
    end
  end

  def insert(val)
    @next = Node.new(val,nil,nil)
  end

end
