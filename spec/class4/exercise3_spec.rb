RSpec.describe 'Class 4 Exercise 3' do
  let(:exercise3) do
    load File.expand_path('../../../lib/class4/exercise3.rb', __FILE__)
  end

  context 'with a friend' do
    before do
      allow_any_instance_of(Kernel).to receive(:gets).and_return('y')
    end

    it 'asks whether or not you like tacos' do
      message = <<END
Do you like eating tacos? (y or n)
We can be friends!
END

      expect { exercise3 }.to output(message).to_stdout
    end
  end

  context 'with an enemy' do
    before do
      allow_any_instance_of(Kernel).to receive(:gets).and_return('n')
    end

    it 'asks whether or not you like tacos' do
      message = <<END
Do you like eating tacos? (y or n)
Get out of my sight!
END

      expect { exercise3 }.to output(message).to_stdout
    end
  end

  context 'with a confused friend' do
    before do
      responses = %w(maybe y)
      allow_any_instance_of(Kernel).to receive(:gets).and_return(*responses)
    end

    it 'asks whether or not you like tacos' do
      message = <<END
Do you like eating tacos? (y or n)
Try again
Do you like eating tacos? (y or n)
We can be friends!
END

      expect { exercise3 }.to output(message).to_stdout
    end
  end

  context 'with a very confused enemy' do
    before do
      responses = ['maybe', 'not sure', 'n']
      allow_any_instance_of(Kernel).to receive(:gets).and_return(*responses)
    end

    it 'asks whether or not you like tacos' do
      message = <<END
Do you like eating tacos? (y or n)
Try again
Do you like eating tacos? (y or n)
Try again
Do you like eating tacos? (y or n)
Get out of my sight!
END

      expect { exercise3 }.to output(message).to_stdout
    end
  end
end
