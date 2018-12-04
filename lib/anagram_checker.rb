# This class is responsible for checking what words are an anagram of the input
class AnagramChecker
  attr_reader :word_bank
  def initialize
    @word_bank = ['post', 'pasta', 'pots', 'tops', 'opts', 'spot', 'stop']
  end

  def add_word(word)
    @word_bank << word
  end

  def solve(word_input)
    letters = word_input.chars.sort
    words = @word_bank.select do |word|
      word.chars.sort == letters && word != word_input
    end
    words.join("\n")
  end
end
