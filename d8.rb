class MaxStack
  attr_accessor :stack, :max

  def initialize
    @stack = []
    @top = -1
    @max = 0
  end

  def push(value)
    if @top = -1
      @max = value
      @top+=1
      @stack[@top] = [value,@max]
      return
    end

    if value > max
      @max = value
    end
      @top+=1
      @stack[@top] = [value,@max]
  end

  def pop
    val = @stack[@top]
    @top-=1
    val
  end

  def max
    @stack[@top][1]
  end
end
