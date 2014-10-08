RSpec.describe 'Class 2 Exercise 4' do
  let(:exercise4) do
    load File.expand_path('../../../lib/class2/exercise4.rb', __FILE__)
  end

  before do
    allow_any_instance_of(Kernel).to receive(:gets).and_return('anything')
  end

  it 'outputs to STDOUT' do
    expect { exercise4 }.to output.to_stdout
  end

  context 'with Samuel Leroy Jackson' do
    before do
      stubs = %w(Samuel Leroy Jackson)
      allow_any_instance_of(Kernel).to receive(:gets).and_return(*stubs)
    end

    it "asks for a person's names and greets them with their full name" do
      message = <<END
What's your first name?
What's your middle name?
What's your last name?
Nice to meet you, Samuel Leroy Jackson.
END

      expect { exercise4 }.to output(message).to_stdout
    end
  end

  context 'with Melissa Joan Hart' do
    before do
      stubs = %w(Melissa Joan Hart)
      allow_any_instance_of(Kernel).to receive(:gets).and_return(*stubs)
    end

    it "asks for a person's names and greets them with their full name" do
      message = <<END
What's your first name?
What's your middle name?
What's your last name?
Nice to meet you, Melissa Joan Hart.
END

      expect { exercise4 }.to output(message).to_stdout
    end
  end
end
