require 'minitest/autorun'
require 'minitest/pride'
require './lib/longest_common_sequence'
require 'pry'

class LongestCommonSequenceTest < Minitest::Test
  def test_it_returns_array_of_strings_that_match
    string_1 = 'abcdef'
    string_2 = 'abcefd'
    expected = lcs(string_1, string_2)
    result = 'abcef'

    assert_equal expected, result
  end
end
