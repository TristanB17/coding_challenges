require 'minitest/autorun'
require 'minitest/pride'
require './lib/the_wave'
require 'pry'

class TheWaveTest < Minitest::Test
  def test_can_capitalize_string
    new_wave = TheWave.new
    word = 'howdy'
    expected = ['Howdy', 'hOwdy', 'hoWdy', 'howDy', 'howdY']
    result = new_wave.do_the_wave(word)
    assert_equal expected, result
  end

  def test_creates_alphabet_hash_object
    expected = 26
    result = TheWave.new.get_alphabet
    assert_equal Hash, result.class
    assert_equal expected, result.length
  end

  def test_it_initializes_with_alphabet
    new_wave = TheWave.new
    letters_in_the_alphabet = 26
    assert_equal letters_in_the_alphabet, new_wave.alphabet.length
  end

  def test_returns_version_of_word_with_capitalized_letter
    letter = 'a'
    index = 1
    word = 'barnacle'
    modified_word = 'bArnacle'
    new_wave = TheWave.new
    result = new_wave.replace_a_letter(word, letter, index)
    assert_equal modified_word, result
  end
end
