require_relative 'lib/anagram_checker'

puts 'Enter a word'
input = gets.chomp

puts "The anagrams are:"
puts AnagramChecker.solve(input)
