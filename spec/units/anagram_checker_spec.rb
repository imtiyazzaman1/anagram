require 'anagram_checker'

describe AnagramChecker do
  describe '#add_word' do
    it 'adds to word bank' do
      expect { subject.add_word('word') }.to change { subject.word_bank.length }
        .by(1)
    end
  end
  describe '#solve' do
    it 'returns a list of words that are an anagram for the word passed in' do
      expect(subject.solve('stop')).to eq(
        "post\npots\ntops\nopts\nspot"
      )
    end
  end
end
