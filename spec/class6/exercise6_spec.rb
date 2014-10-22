RSpec.describe 'Class 6 Exercise 6' do
  let(:exercise6) do
    Kernel.load File.expand_path('../../../lib/class6/exercise6.rb', __FILE__)
  end

  let(:database) do
    File.absolute_path('../../../lib/class6/database.yml', __FILE__)
  end

  context "with a key of :friend and a value of 'Paul McCartney'" do
    before do
      ARGV[0] = 'friend'
      ARGV[1] = 'Paul McCartney'
    end

    it 'updates the database by adding a new key-value pair' do
      message = <<-END
Updated 1 key-value pair in #{database}
:#{ARGV[0]} => "#{ARGV[1]}"
END
      expect { exercise6 }.to output(message).to_stdout
    end
  end

  context "with a key of :name and a value of 'John Lennon'" do
    before do
      ARGV[0] = 'name'
      ARGV[1] = 'John Lennon'
    end

    it 'updates the database by modifying an existing key-value pair' do
      message = <<-END
Updated 1 key-value pair in #{database}
:#{ARGV[0]} => "#{ARGV[1]}"
END
      expect { exercise6 }.to output(message).to_stdout
    end
  end
end
