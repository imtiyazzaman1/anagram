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
    word_to_check = word_input.downcase
    check_word(word_to_check)
    letters = word_to_check.downcase.chars.sort
    words = @word_bank.bank.select do |word|
      word.chars.sort == letters && word != word_to_check
    end

    words.join("\n")
  end

  private

  def check_word(word)
    raise 'Error! Invalid character found' unless word[/[a-zA-Z]+/] == word
  end
end
