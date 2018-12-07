def get_alphabet
  Hash[('a'..'z').zip('A'..'Z')]
end

def do_the_wave(word)
  alphabet = get_alphabet
  word.chars.map.with_index do |letter, index|
    duplicate = word.dup
    replace_a_letter(duplicate, letter, index) if alphabet[letter]
  end
end

def replace_a_letter(word, letter, index)
  word.insert(index, letter.capitalize)
  word.slice!(index + 1)
  word
end
