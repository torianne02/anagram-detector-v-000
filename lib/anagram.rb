class Anagram
  attr_accessor :word

  def initialize(initial_word)
    @word = initial_word
  end

  def match(possible_anagrams)
    matches = []
    possible_anagrams.each do |anagram_word|
      if anagram_word.split('').sort.join == @word.split('').sort.join
        matches << anagram_word
      end
    end
    return matches
  end
end
