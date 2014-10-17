RSpec.describe 'Class 5 Exercise 3' do
  let(:exercise3) do
    load File.expand_path('../../../lib/class5/exercise3.rb', __FILE__)
  end

  let(:database) do
    File.absolute_path('../../../lib/class5/database.yml', __FILE__)
  end

  it 'displays the result' do
    message = "Saved 5 records to #{database}\n"
    expect { exercise3 }.to output(message).to_stdout
  end

  it "saves the corporate buzzwords to anyone's database file" do
    @out = $stdout
    $stdout = StringIO.new

    exercise3

    records = <<-END
---
- Incentivized methodologies
- Seemless innovation
- Corporate synergy
- Scalable globalization
- Monetized assets
END

    expect(File.read(database)).to eq(records)

    $stdout = @out
  end
end
