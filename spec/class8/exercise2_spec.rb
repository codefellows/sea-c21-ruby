RSpec.describe 'Class 8 Exercise 2' do
  let(:exercise2) do
    load File.expand_path('../../../lib/class8/exercise2.rb', __FILE__)
  end

  it 'follows the execution and displays a short message' do
    message = <<END
Executing the method
method_param is dinner
Executing the block
END

    expect { exercise2 }.to output(message).to_stdout
  end
end
