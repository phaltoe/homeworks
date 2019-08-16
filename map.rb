class MyMap
  
  attr_reader :map 

  def initialize
    @map = Array.new
  end

  def set(key, value)
    pair_index = @map.index { |pair| pair[0] == key}
    if pair_index
      @map[pair_index][1] = value
    else
      @map << [key, value]
    end
  end

  def get(key)
    @map.each { |pair| return pair[1] if pair[0] == key}
    nil
  end

  def delete(key)
    @map.each { |pair| @map.delete(pair) if pair[0] == key}
  end

  def show
    deep_dup(@map)
  end

  private 

  def deep_dup(arr)
    arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el}
  end

end