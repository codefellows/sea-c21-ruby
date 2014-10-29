RSpec.describe 'Class 8 Exercise 1' do
  let(:exercise1) do
    load File.expand_path('../../../lib/class8/exercise1.rb', __FILE__)
  end

  it 'follows the execution and displays a short message' do
    message = <<END
Executing the method
Executing the block
END

    expect { exercise1 }.to output(message).to_stdout
  end
end
