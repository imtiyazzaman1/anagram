class WordBank
  def initialize
    @bank = []
  end

  def add(word)
    @bank << word
  end

  def bank
    @bank.dup
  end

end
