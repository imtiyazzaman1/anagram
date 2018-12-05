require_relative 'lib/anagram_checker'

def main
  checker = AnagramChecker.new

  loop do
    puts 'Enter a word'
    word_input = gets.chomp

    puts 'Enter the name of the file contain a list of words'
    file_input = gets.chomp

    checker.word_extractor.extract_from_file(file_input)

    puts "The anagrams are:\n#{checker.solve(word_input)}"
    break
  end
end

main
