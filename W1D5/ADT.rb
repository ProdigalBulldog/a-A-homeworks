class Stack
  def initialize
    @stack = []
  end

  def add(el)
    @stack << el
    el
  end

  def remove
    @stack.pop
  end

  def show
    @stack.dup
  end
end

class Queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue << el
    el
  end

  def dequeue
    @queue.shift
  end

  def show
    @queue.dup
  end
end

class Map
  def initialize
    @map = []
  end

  def assign(k, v)
    idx = @map.index {|pair| pair[0] == k}
    idx ? @map[idx][1] = v : @map.push([k, v])
    [k, v]
  end

  def lookup(k)
    @map.each {|pair| return pair[1] if pair[0] == k}
    nil
  end

  def remove(k)
    @map.reject! {|pair| pair[0] == k}
    nil
  end

  def show
    deep_dup(@map)
  end

  private
  def deep_dup(arr)
    arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
  end
end
