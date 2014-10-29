RSpec.describe 'Class 8 Exercise 3' do
  let(:exercise3) do
    load File.expand_path('../../../lib/class8/exercise3.rb', __FILE__)
  end

  it 'follows the execution and displays a short message' do
    message = <<END
Executing the method
method_param is dinner
Executing the block
block_param is lunch
END

    expect { exercise3 }.to output(message).to_stdout
  end
end
