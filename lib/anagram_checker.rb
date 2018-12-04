# This class is responsible for checking what words are an anagram of the input
class AnagramChecker
  @word_bank = ['post', 'pasta', 'pots', 'tops', 'opts', 'spot', 'stop']
  def self.solve(word_input)
    letters = word_input.chars.sort
    words = @word_bank.select do |word|
      word.chars.sort == letters && word != word_input
    end
    words.join("\n")
  end
end