RSpec.describe 'Class 6 Exercise 7' do
  let(:exercise7) do
    Kernel.load File.expand_path('../../../lib/class6/exercise7.rb', __FILE__)
  end

  let(:database) do
    File.absolute_path('../../../lib/class6/database.yml', __FILE__)
  end

  context 'with a key of :age' do
    before { ARGV[0] = 'age' }

    it 'updates the database by removing the key-value pair' do
      message = <<-END
Removed 1 key-value pair in #{database}
:age => 58
END
      expect { exercise7 }.to output(message).to_stdout
    end
  end

  context 'with a key of :pet' do
    before { ARGV[0] = 'pet' }

    it 'displays an error because no records match the key' do
      message = <<-END
Could't find key :pet from #{database}
END
      expect { exercise7 }.to output(message).to_stdout
    end
  end
end
