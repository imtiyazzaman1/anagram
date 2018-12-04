require_relative 'lib/anagram_checker'

checker = AnagramChecker.new

puts 'Enter a word'
input = gets.chomp.split(' ')

word_input = input[0]
file_input = input[1]

checker.word_extractor.extract_from_file(file_input)

puts 'The anagrams are:'
puts checker.solve(word_input)
