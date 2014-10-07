RSpec.describe 'Class 2 Exercise 3' do
  let(:exercise3) do
    load File.expand_path('../../../lib/class2/exercise3.rb', __FILE__)
  end

  it 'outputs to STDOUT' do
    expect { exercise3 }.to output.to_stdout
  end

  it 'display their age in years' do
    expect { exercise3 }.to output("36\n").to_stdout
  end
end
