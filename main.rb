require_relative 'lib/anagram_checker'

checker = AnagramChecker.new

puts 'Enter a word'
input = gets.chomp

puts "The anagrams are:"
puts checker.solve(input)
