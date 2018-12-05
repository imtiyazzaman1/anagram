describe 'Viewing anagrams of a word' do
  context 'when the files contains anagrams' do
    let(:user_input) { ["stop\n", "word_list.txt\n"] }

    it 'displays all possible words' do
      allow_any_instance_of(Object).to receive(:gets).and_return(*user_input)
      expect { load 'main.rb' }.to output(
        "Enter a word\nEnter the name of the file contain a list of words
The anagrams are:\npost\npots\ntops\nopts\nspot\n"
      ).to_stdout
    end
  end

  context 'when the file does not contain anagrams' do
    let(:user_input) { ["stop\n", "listen_list.txt\n"] }

    it 'displays no words' do
      allow_any_instance_of(Object).to receive(:gets).and_return(*user_input)

      expect { load 'main.rb' }.to output(
        "Enter a word\nEnter the name of the file contain a list of words
The anagrams are:\n\n"
      ).to_stdout
    end
  end
end
