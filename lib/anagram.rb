class Anagram
  attr_accessor :word

  def initialize(initial_word)
    @word = initial_word
  end

  def match(possible_anagrams)
    matches = []
    possible_anagrams.each do |anagram_word|
      if anagram_word.sort_by {|a, b| a <=> b} == @word.sort_by {|a, b| a <=> b}
        matches += anagram_word
      end
    end
    return matches
  end
    # for word in possible_anagrams:
    #   word.sort()
    #   if word == initial_word:
    #     matches += word
    # return matches
end
