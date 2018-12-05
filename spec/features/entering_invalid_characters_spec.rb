describe 'Entering invalid characters' do
  context 'when a number' do
    let(:user_input) { 'w0rd' }
    it 'displays an error' do
      allow_any_instance_of(Object).to receive(:gets).and_return(user_input)
      expect { load 'main.rb' }.to output(
        "Enter a word\nError! Invalid character found\n").to_stdout
    end
  end
end
