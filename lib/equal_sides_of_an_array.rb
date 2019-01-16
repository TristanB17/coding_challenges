class EqualSides
  attr_reader :num_array

  def initialize(num_array)
    @num_array = num_array
  end

  def sum_left(index)
    return 0 if index == 0
    num_array.slice(0...index).sum
  end

  def sum_right(index)
    return 0 if index == num_array.length
    num_array.slice(index + 1..-1).sum
  end

  def find_equal_index
    num_index = 0
    while num_index <= num_array.length
      even = (sum_left(num_index) == sum_right(num_index))
      return num_index if even
      num_index += 1
    end
    return -1
  end
end
