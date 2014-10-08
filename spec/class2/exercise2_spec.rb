RSpec.describe 'Class 2 Exercise 2' do
  let(:exercise2) do
    load File.expand_path('../../../lib/class2/exercise2.rb', __FILE__)
  end

  it 'outputs to STDOUT' do
    expect { exercise2 }.to output.to_stdout
  end

  it 'display the minutes in a decade' do
    expect { exercise2 }.to output("5256000\n").to_stdout
  end
end
