class Implementations
  def initialize(array)
    @array = array 
  end

  def valid?
    return false if @array.empty?
    true
  end

  def my_map
    my_array = []
    element = 0
    until @array.size <= element
      my_array << yield(@array[element])
      element += 1
    end
    my_array
  end

  def my_select
    my_array = []
    element = 0
    until @array.size <= element
      my_array << (@array[element]) if yield(@array[element])
      element += 1
    end
    my_array
  end

  def my_each
    element = 0
    until @array.size <= element
      yield(@array[element])
      element += 1
    end
  end
end

output_array = Implementations.new([1, 2, 3])

p output_array.my_map {|element| element + 1}
puts
p output_array.my_select {|element| element > 2}
puts
output_array.my_each do |element| 
  puts element * 2
end
