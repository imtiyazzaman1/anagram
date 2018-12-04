require 'anagram_checker'

describe AnagramChecker do
  let(:word_bank) { double :word_bank }
  let(:subject) { described_class.new(word_bank: word_bank) }

  describe '#add_word' do
    it 'adds to word bank' do
      expect(word_bank).to receive(:add).with('word')
      subject.add_word('word')
    end
  end

  describe '#solve' do
    it 'returns a list of words that are an anagram for the word passed in' do
      allow(word_bank).to receive(:bank).and_return(
        %w[post pasta pots tops opts spot stop]
      )

      expect(subject.solve('stop')).to eq(
        "post\npots\ntops\nopts\nspot"
      )
    end
  end
end
