RSpec.describe 'Class 4 Exercise 1' do
  let(:exercise1) do
    load File.expand_path('../../../lib/class4/exercise1.rb', __FILE__)
  end

  context 'with a list of 3 words' do
    before do
      responses = ['banana', 'apple', 'cherry', '']
      allow_any_instance_of(Kernel).to receive(:gets).and_return(*responses)
    end

    it 'displays the words back to the user in alphabetical order' do
      message = <<END
Type some words to be sorted alphabetically:
Sweet! Here they are in alphabetical order:
apple
banana
cherry
END

      expect { exercise1 }.to output(message).to_stdout
    end
  end

  context 'with a list of 2 words' do
    before do
      responses = ['banana', 'apple', '']
      allow_any_instance_of(Kernel).to receive(:gets).and_return(*responses)
    end

    it 'displays the words back to the user in alphabetical order' do
      message = <<END
Type some words to be sorted alphabetically:
Sweet! Here they are in alphabetical order:
apple
banana
END

      expect { exercise1 }.to output(message).to_stdout
    end
  end

  context 'with a list of 1 word' do
    before do
      responses = ['banana', '']
      allow_any_instance_of(Kernel).to receive(:gets).and_return(*responses)
    end

    it 'displays the words back to the user in alphabetical order' do
      message = <<END
Type some words to be sorted alphabetically:
Sweet! Here they are in alphabetical order:
banana
END

      expect { exercise1 }.to output(message).to_stdout
    end
  end

  context 'with a list of no words' do
    before do
      responses = ['']
      allow_any_instance_of(Kernel).to receive(:gets).and_return(*responses)
    end

    it 'displays the words back to the user in alphabetical order' do
      message = <<END
Type some words to be sorted alphabetically:
Sweet! Here they are in alphabetical order:
END

      expect { exercise1 }.to output(message).to_stdout
    end
  end
end
