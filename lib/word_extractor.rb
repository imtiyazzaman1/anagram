class WordExtractor
  def initialize(word_bank: WordBank.new)
    @word_bank = word_bank
  end

  def extract_from_file(file_name)
    File.open("./#{file_name}", 'r') do |file|
      file.each_line do |word|
        @word_bank.add(word)
      end
    end
  end
end
