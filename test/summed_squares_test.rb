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
    result = 26
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

  def test_it_can_return_array_of_arrays_of_numbers_and_their_divisors_squared
    number_1 = 1
    number_2 = 42
    expected = [[1,1], [42, 2500]]
    result = list_squared(number_1, number_2)
    assert_equal expected, result
  end

  def test_alternative_get_sum_of_divisors_squared_method
    number = 42
    expected = 2500
    result = get_divisors_squared(42)
    assert_equal expected, result
  end

  def test_list_squared_alternate
    number_1 = 1
    number_2 = 42
    expected = [[1,1], [42, 2500]]
    result = list_squared_alternate(number_1, number_2)
    assert_equal expected, result
  end

  def test_all_in_one
    number = 42
    expected = 2500
    result = all_factors_summed(number)
    assert_equal expected, result
  end

  def test_all_in_one_from_beginning
    number_1 = 1
    number_2 = 246
    expected = [[1,1], [42, 2500], [246, 84100]]
    result = list_squared_all_in_one(number_1, number_2)
    assert_equal expected, result
  end

  def test_all_in_one_scalability
    number_1 = 1
    number_2 = 10000
    expected = [[1,1], [42, 2500], [246, 84100], [287, 84100], [728, 722500], [1434, 2856100], [1673, 2856100], [1880, 4884100], [4264, 24304900], [6237, 45024100], [9799, 96079204], [9855, 113635600]]
    result = list_squared_all_in_one(number_1, number_2)
    assert_equal expected, result
  end
end
