require 'minitest/autorun'
require 'minitest/pride'
require './lib/the_wave'
require 'pry'

class TheWaveTest < Minitest::Test
  def test_can_capitalize_string
    word = 'howdy'
    expected = ['Howdy', 'hOwdy', 'hoWdy', 'howDy', 'howdY']
    result = do_the_wave(word)
    assert_equal expected, result
  end

  def test_creates_alphabet_hash_object
    expected = 26
    result = get_alphabet
    assert_equal Hash, result.class
    assert_equal expected, result.length
  end

  def test_returns_version_of_word_with_capitalized_letter
    letter = 'a'
    index = 1
    word = 'barnacle'
    modified_word = 'bArnacle'
    result = replace_a_letter(word, letter, index)
    assert_equal modified_word, result
  end
end