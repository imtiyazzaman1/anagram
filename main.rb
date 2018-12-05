require_relative 'lib/anagram_checker'

checker = AnagramChecker.new

puts 'Enter a word'
word_input = gets.chomp
file_input = gets.chomp

checker.word_extractor.extract_from_file(file_input)

puts 'The anagrams are:'
puts checker.solve(word_input)
