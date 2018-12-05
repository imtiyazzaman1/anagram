describe 'Invalid file name' do
  context 'incorrect file extension' do
    let(:user_input) { ["stop\n", "word_list\n"] }
    it 'displays an error' do
      allow_any_instance_of(Object).to receive(:gets).and_return(*user_input)
      expect { load 'main.rb' }.to raise_error('Error! File not found')
    end
  end

  context 'file not found' do
    let(:user_input) { ["stop\n", "the_word_list.txt\n"] }
    it 'displays an error' do
      allow_any_instance_of(Object).to receive(:gets).and_return(*user_input)
      expect { load 'main.rb' }.to raise_error('Error! File not found')
    end
  end
end
