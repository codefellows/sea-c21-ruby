RSpec.describe 'Class 5 Exercise 1' do
  let(:exercise1) do
    load File.expand_path('../../../lib/class5/exercise1.rb', __FILE__)
  end

  it 'displays an Array of corporate buzzwords transformed into YAML format' do
    message = <<END
---
- Incentivized methodologies
- Seemless innovation
- Corporate synergy
- Scalable globalization
- Monetized assets
END

    expect { exercise1 }.to output(message).to_stdout
  end
end
