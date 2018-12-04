require 'word_extractor'

describe WordExtractor do
  describe '#extract_from_file' do
    it 'opens a file' do
      expect(File).to receive(:open)
      subject.extract_from_file('word_list.txt')
    end
  end
end
