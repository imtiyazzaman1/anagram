describe 'Entering invalid characters' do
  context 'when a number' do
    let(:user_input) { ["w0rd\n", 'word_list.txt'] }
    it 'displays an error' do
      allow_any_instance_of(Object).to receive(:gets).and_return(*user_input)
      expect { load 'main.rb' }.to raise_error('Error! Invalid character found')
    end
  end

  context 'when a special character' do
    let(:user_input) { ["w0rd\n", 'word_list.txt'] }
    it 'displays an error' do
      allow_any_instance_of(Object).to receive(:gets).and_return(*user_input)
      expect { load 'main.rb' }.to raise_error('Error! Invalid character found')
    end
  end
end
