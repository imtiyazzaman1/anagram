describe 'Viewing anagrams of a word' do
  let(:user_input) { ["stop\n", "word_list.txt\n"] }
  it 'displays all possible words when a word is entered' do
    allow_any_instance_of(Object).to receive(:gets).and_return(*["stop\n", "word_list.txt\n"])
    expect { load 'main.rb' }.to output(
      "Enter a word\nEnter the name of the file contain a list of words
The anagrams are:\npost\npots\ntops\nopts\nspot\n"
    ).to_stdout
  end

  it 'displays no words if anagrams are not found' do
    allow_any_instance_of(Object).to receive(:gets).and_return(
      *["stop\n", "listen_list.txt\n"]
    )

    expect { load 'main.rb' }.to output(
      "Enter a word\nEnter the name of the file contain a list of words
The anagrams are:\n\n"
    ).to_stdout
  end
end
