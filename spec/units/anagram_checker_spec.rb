require 'anagram_checker'

describe AnagramChecker do
  describe '#solve' do
    it 'returns a list of words that are an anagram for the word passed in' do
      expect(AnagramChecker.solve('stop')).to eq(
        "post\npots\ntops\nopts\nspot"
      )
    end
  end
end
