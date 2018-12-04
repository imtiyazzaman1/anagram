describe 'Viewing anagrams of a word' do
  it 'it displays all possible words when a word is entered' do
    allow_any_instance_of(Object).to receive(:gets).and_return("stop\n")
    expect { load 'main.rb' }.to output(
      "post\npots\ntops\nopts\nspot\n"
    ).to_stdout
  end
end
