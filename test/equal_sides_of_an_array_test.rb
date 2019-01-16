require 'minitest/autorun'
require 'minitest/pride'
require './lib/equal_sides_of_an_array'
require 'pry'

class EqualSidesTest < Minitest::Test

  def test_it_exists
    number_array = [1, 2, 2, 3]
    eqtest = EqualSides.new(number_array)

    assert_instance_of EqualSides, eqtest
    assert_equal number_array, eqtest.num_array
  end

  def test_it_returns_all_numbers_to_left_of_target_number
    number_array = [1, 3, 2, 4]
    select_index = 2
    eqtest = EqualSides.new(number_array)
    result = 4

    assert_equal eqtest.sum_left(select_index), result
  end

  def test_it_returns_all_numbers_to_right_of_target_number
    number_array = [1, 3, 2, 4]
    select_index = 2
    eqtest = EqualSides.new(number_array)
    result = 4

    assert_equal eqtest.sum_right(select_index), result
  end
  # #
  def test_it_recursively_evaluates_array_equality
    number_array = [1, 3, 2, 4]
    eqtest = EqualSides.new(number_array)
    result = 2

    assert_equal eqtest.find_equal_index, result
  end

  def test_it_returns_index_zero_if_all_higher_indexes_add_up_to_zero
    number_array = [1, -2, 1, 1]
    eqtest = EqualSides.new(number_array)
    result = 0

    assert_equal eqtest.find_equal_index, result
  end

  def test_it_returns_negative_one_if_no_index_found
    number_array = [4, 4, 4, 4]
    eqtest = EqualSides.new(number_array)
    result = -1

    assert_equal eqtest.find_equal_index, result
  end
end

# You are going to be given an array of integers. Your job is to take that array and find an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N. If there is no index that would make this happen, return -1.
#
# For example:
#
# Let's say you are given the array {1,2,3,4,3,2,1}:
# Your function will return the index 3, because at the 3rd position of the array, the sum of left side of the index ({1,2,3}) and the sum of the right side of the index ({3,2,1}) both equal 6.
#
# Let's look at another one.
# You are given the array {1,100,50,-51,1,1}:
# Your function will return the index 1, because at the 1st position of the array, the sum of left side of the index ({1}) and the sum of the right side of the index ({50,-51,1,1}) both equal 1.
#
# Last one:
# You are given the array {20,10,-80,10,10,15,35}
# At index 0 the left side is {}
# The right side is {10,-80,10,10,15,35}
# They both are equal to 0 when added. (Empty arrays are equal to 0 in this problem)
# Index 0 is the place where the left side and right side are equal.
#
# Note: Please remember that in most programming/scripting languages the index of an array starts at 0.
#
# Input:
# An integer array of length 0 < arr < 1000. The numbers in the array can be any integer positive or negative.
#
# Output:
# The lowest index N where the side to the left of N is equal to the side to the right of N. If you do not find an index that fits these rules, then you will return -1.
#
# Note:
# If you are given an array with multiple answers, return the lowest correct index.
# An empty array should be treated like a 0 in this problem.
