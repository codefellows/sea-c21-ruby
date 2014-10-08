RSpec.describe 'Class 2 Exercise 6' do
  let(:exercise6) do
    load File.expand_path('../../../lib/class2/exercise6.rb', __FILE__)
  end

  before do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('anything')
  end

  it 'outputs to STDOUT' do
    expect { exercise6 }.to output.to_stdout
  end

  context 'i want a raise' do
    before do
      stub = 'i want a raise'
      allow_any_instance_of(Kernel).to receive(:gets).and_return(stub)
    end

    it 'rudely asks what you want, yells at you, and fires you' do
      message = <<END
CAN'T YOU SEE I'M BUSY?! MAKE IT FAST, JOHNSON!
WHADDAYA MEAN 'I WANT A RAISE'?!? YOU'RE FIRED!!
END

      expect { exercise6 }.to output(message).to_stdout
    end
  end

  context 'I want an iPhone' do
    before do
      stub = 'I want an iPhone'
      allow_any_instance_of(Kernel).to receive(:gets).and_return(stub)
    end

    it 'rudely asks what you want, yells at you, and fires you' do
      message = <<END
CAN'T YOU SEE I'M BUSY?! MAKE IT FAST, JOHNSON!
WHADDAYA MEAN 'I WANT AN IPHONE'?!? YOU'RE FIRED!!
END

      expect { exercise6 }.to output(message).to_stdout
    end
  end
end
