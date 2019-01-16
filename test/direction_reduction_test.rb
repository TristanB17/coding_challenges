require 'minitest/autorun'
require 'minitest/pride'
require './lib/direction_reduction'
require 'pry'

class EqualSidesTest < Minitest::Test
  def test_dictionary
    length = 4

    assert_equal length, dictionary.length
  end

  def test_deletes_two_conflicting_directions_from_array
    dir_array = ["NORTH", "SOUTH", "WEST"]
    result = ['WEST']
    expected = remove_conflicting_directions(dir_array)

    assert_equal expected, result
  end

  def test_deletes_two_conflicting_nested_directions_from_array
    dir_array = ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]
    result = ['WEST']
    expected = remove_conflicting_directions(dir_array)

    assert_equal expected, result
  end
end
