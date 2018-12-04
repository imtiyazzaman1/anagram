require_relative 'lib/anagram_checker'

input = gets.chomp
puts AnagramChecker.solve(input)
