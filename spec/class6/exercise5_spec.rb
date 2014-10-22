RSpec.describe 'Class 6 Exercise 5' do
  let(:exercise5) do
    Kernel.load File.expand_path('../../../lib/class6/exercise5.rb', __FILE__)
  end

  let(:database) do
    File.absolute_path('../../../lib/class6/database.yml', __FILE__)
  end

  person = {
    name: 'George Harrison',
    age: 58,
    song: 'Something',
    url: 'https://www.youtube.com/watch?v=UKAp-jRUp2o'
  }

  person.each do |key, value|
    context "with a key of :#{key}" do
      before { ARGV[0] = key }

      it 'displays the matching key-value pair' do
        message = <<-END
Found 1 key-value pair in #{database}
#{key.inspect} => #{value.inspect}
END
        expect { exercise5 }.to output(message).to_stdout
      end
    end
  end

  context 'with a key of :pet' do
    before { ARGV[0] = 'pet' }

    it 'displays an error because no records match the key' do
      message = <<-END
Could't find key :pet in #{database}
END
      expect { exercise5 }.to output(message).to_stdout
    end
  end
end
