RSpec.describe 'Class 8 Exercise 4' do
  let(:exercise4) do
    load File.expand_path('../../../lib/class8/exercise4.rb', __FILE__)
  end

  it 'follows the execution and displays a short message' do
    message = <<END
Executing the method
method_param1 is dinner
method_param2 is soup
Executing the block
block_param1 is lunch
block_param2 is tacos
END

    expect { exercise4 }.to output(message).to_stdout
  end
end
