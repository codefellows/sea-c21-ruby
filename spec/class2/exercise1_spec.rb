RSpec.describe 'Class 2 Exercise 1' do
  let(:exercise1) do
    load File.expand_path('../../../lib/class2/exercise1.rb', __FILE__)
  end

  it 'outputs to STDOUT' do
    expect { exercise1 }.to output.to_stdout
  end

  it 'display the hours in a year' do
    expect { exercise1 }.to output("8760\n").to_stdout
  end
end
