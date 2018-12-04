require 'word_bank'

describe WordBank do
  describe '#add' do
    it 'adds to the word back' do
      expect { subject.add('word') }.to change { subject.bank.length }.by(1)
    end
  end
end
