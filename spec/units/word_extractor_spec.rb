require 'word_extractor'

describe WordExtractor do
  let(:word_bank) { double :word_bank}
  let(:subject) { described_class.new(word_bank: word_bank) }

  describe '#extract_from_file' do
    it 'opens a file' do
      expect(File).to receive(:open)
      subject.extract_from_file('word_list.txt')
    end

    it 'adds words to the word bank' do
      expect(word_bank).to receive(:add).exactly(7).times
      subject.extract_from_file('word_list.txt')
    end
  end
end
