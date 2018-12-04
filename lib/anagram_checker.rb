require_relative 'word_bank'
require_relative 'word_extractor'

# This class is responsible for checking what words are an anagram of the input
class AnagramChecker
  attr_reader :word_bank, :word_extractor
  def initialize(word_bank: WordBank.new,
                 word_extractor: WordExtractor.new(word_bank: word_bank))
    @word_bank = word_bank
    @word_extractor = word_extractor
  end

  def add_word(word)
    @word_bank.add(word)
  end

  def solve(word_input)
    letters = word_input.chars.sort
    words = @word_bank.bank.select do |word|
      word.chars.sort == letters && word != word_input
    end

    words.join("\n")
  end
end
