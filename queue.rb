class Queue
  attr_reader :queue 

  def initialize 
    @queue = Array.new 
  end

  def enqueue(el)
    @queue.unshift(el)
    self 
  end

  def dequeue
    @queue.pop
    self 
  end
  
  def peek
    @queue.last
  end
end