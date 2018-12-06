require 'minitest/autorun'
require 'minitest/pride'
require './lib/summed_squares'
require 'pry'

class SummedSquaresTest < Minitest::Test
  def test_returns_array_of_correct_range
    number_1 = 1
    number_2 = 5
    array = [1, 2, 3, 4, 5]
    range = get_range(number_1, number_2)
    assert_equal array, range
    assert_equal 5, range.length
  end

  def test_adds_divisors_squared_from_one_to_target_number
    number = 5
    result = [1]
    abridged = check_sum_of_each(number)
    assert_equal result, abridged
  end

  def test_it_can_determine_if_a_number_is_square
    number_1 = 4
    number_2 = 5
    result_1 = true
    result_2 = false
    assert_equal result_1, is_square?(number_1)
    assert_equal result_2, is_square?(number_2)
  end

  # def test_it_squares_and_adds_numbers
  #   sample_array = [1, 2, 3, 6, 7, 14, 21, 42]
  #   result = true
  #   assert_equal result, sample_array
  # end
end
