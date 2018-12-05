require_relative 'lib/anagram_checker'

def main
  checker = AnagramChecker.new

  loop do
    puts 'Enter a word'
    word_input = gets.chomp

    if contains_invalid_character?(word_input)
      puts 'Error! Invalid character found'
      break
    end

    puts 'Enter the name of the file contain a list of words'
    file_input = gets.chomp

    checker.word_extractor.extract_from_file(file_input)

    puts 'The anagrams are:'
    puts checker.solve(word_input)
    break
  end
end

private

def contains_invalid_character?(word)
  word[/[a-zA-Z]+/] != word
end

main
