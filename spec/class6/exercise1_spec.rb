RSpec.describe 'Class 6 Exercise 1' do
  let(:exercise1) do
    load File.expand_path('../../../lib/class6/exercise1.rb', __FILE__)
  end

  it 'displays a Hash of person key-value pairs' do
    message = <<END
---
:name: George Harrison
:age: 58
:song: Something
:url: https://www.youtube.com/watch?v=UKAp-jRUp2o
END

    expect { exercise1 }.to output(message).to_stdout
  end
end
