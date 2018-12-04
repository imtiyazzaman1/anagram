class WordBank
  def initialize
    @bank = ['post', 'pasta', 'pots', 'tops', 'opts', 'spot', 'stop']
  end

  def add(word)
    @bank << word
  end

  def bank
    @bank.dup
  end

end
