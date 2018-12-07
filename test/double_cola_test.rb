require 'minitest/autorun'
require 'minitest/pride'
require './lib/double_cola'
require 'pry'

class DoubleColaTest < Minitest::Test
  def test_it_pushes_name_on_first_index
    name_array = ["Sheldon", "Leonard", "Penny", "Rajesh", "Howard"]
    number = 6
    expected = 'Sheldon'
    result = who_is_next(name_array, number)

    assert_equal expected, result
  end

  def test_it_pushes_name_on_first_index_to_back_twice
    name_array = ["Sheldon", "Leonard", "Penny", "Rajesh", "Howard"]
    expected = ["Leonard", "Penny", "Rajesh", "Howard", ["Sheldon", "Sheldon"]]
    name = 'Sheldon'
    result = push_back(name_array)

    assert_equal expected, result
    assert_equal name, result.last.last
    assert_equal 5, result.length
  end
end
