RSpec.describe 'Class 5 Exercise 4' do
  let(:exercise4) do
    load File.expand_path('../../../lib/class5/exercise4.rb', __FILE__)
  end

  it 'loads the corporate buzzwords and displays the result' do
    database = File.absolute_path('../../../lib/class5/database.yml', __FILE__)

    message = <<END
Loaded 5 records from #{database}
Incentivized methodologies
Seemless innovation
Corporate synergy
Scalable globalization
Monetized assets
END

    expect { exercise4 }.to output(message).to_stdout
  end
end
