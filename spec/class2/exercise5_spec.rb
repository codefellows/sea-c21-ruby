RSpec.describe 'Class 2 Exercise 5' do
  let(:exercise5) do
    load File.expand_path('../../../lib/class2/exercise5.rb', __FILE__)
  end

  before do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('anything')
  end

  it 'outputs to STDOUT' do
    expect { exercise5 }.to output.to_stdout
  end

  context 'with 42' do
    before do
      allow_any_instance_of(Kernel).to receive(:gets).and_return('42')
    end

    it "asks for a person's favorite number and suggests a better one" do
      message = <<END
What's your favorite number?
That's ok, I guess, but isn't 43 just a bit better?
END

      expect { exercise5 }.to output(message).to_stdout
    end
  end

  context 'with 1999' do
    before do
      allow_any_instance_of(Kernel).to receive(:gets).and_return('1999')
    end

    it "asks for a person's favorite number and suggests a better one" do
      message = <<END
What's your favorite number?
That's ok, I guess, but isn't 2000 just a bit better?
END

      expect { exercise5 }.to output(message).to_stdout
    end
  end

  context 'with -33' do
    before do
      allow_any_instance_of(Kernel).to receive(:gets).and_return('-33')
    end

    it "asks for a person's favorite number and suggests a better one" do
      message = <<END
What's your favorite number?
That's ok, I guess, but isn't -32 just a bit better?
END

      expect { exercise5 }.to output(message).to_stdout
    end
  end
end
