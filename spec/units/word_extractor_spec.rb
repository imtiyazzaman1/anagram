require 'word_extractor'

describe WordExtractor do
  let(:word_bank) { double :word_bank }
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

    context 'when file does not exist' do
      it 'throws an error' do
        expect { subject. extract_from_file('wrd_list.txt') }.to raise_error('Error! File not found')
      end
    end
  end
end
