require 'minitest/autorun'
require 'minitest/pride'
require './lib/the_wave'
require 'pry'

class TheWaveTest < Minitest::Test
  def test_can_capitalize_string
    word = 'howdy'
    expected = ['Howdy', 'hOwdy', 'hoWdy', 'howDy', 'howdY']
  end

  def test_creates_alphabet_hash_object
    expected = 26
    result = get_alphabet
    assert_equal Hash, result.class
    assert_equal expected, result.length
  end
end
