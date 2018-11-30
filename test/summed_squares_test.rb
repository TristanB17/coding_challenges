require 'minitest/autorun'
require 'minitest/pride'
require './lib/summed_squares'
require 'pry'

class SummedSquaresTest < Minitest::Test
  # def test_returns_array_of_correct_range
  #   number_1 = 1
  #   number_2 = 5
  #   range = list_squared(number_1, number_2)
  #   assert_equal 5, range.length
  # end
  #
  # def test_returns_even_divisors_from_one_to_target_number
  #   number = 5
  #   result = [1]
  #   abridged = check_sum_of_each(number)
  #   assert_equal result, abridged
  # end

  def test_it_can_determine_if_a_number_is_square
    number_1 = 4
    number_2 = 5
    result_1 = true
    result_2 = false
    assert_equal result_1, is_square?(number_1)
    assert_equal result_2, is_square?(number_2)
  end
end
