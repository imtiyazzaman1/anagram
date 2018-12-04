require_relative 'word_bank'

# This class is responsible for extracting words from a file and passing them to
# a word bank
class WordExtractor
  def initialize(word_bank: WordBank.new)
    @word_bank = word_bank
  end

  def extract_from_file(file_name)
    File.open("./#{file_name}", 'r') do |file|
      file.each_line do |word|
        add_to_word_bank(word)
      end
    end
  end

  private

  def add_to_word_bank(word)
    word = word.delete("\n")
    @word_bank.add(word)
  end
end
