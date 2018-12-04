# This class is responsible for storing words
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
