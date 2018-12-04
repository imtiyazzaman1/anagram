class WordExtractor
  def extract_from_file(file_name)
    File.open("./#{file_name}", 'r')
  end
end
