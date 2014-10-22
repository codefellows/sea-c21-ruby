RSpec.describe 'Class 5 Exercise 3' do
  let(:exercise3) do
    load File.expand_path('../../../lib/class6/exercise3.rb', __FILE__)
  end

  let(:database) do
    File.absolute_path('../../../lib/class6/database.yml', __FILE__)
  end

  it 'displays the result' do
    message = <<-END
Saved 4 key-value pairs to #{database}
END
    expect { exercise3 }.to output(message).to_stdout
  end

  it "saves a Hash of person key-value pairs to anyone's database file" do
    out = $stdout
    $stdout = StringIO.new

    person = {
      name: 'George Harrison',
      age: 58,
      song: 'Something',
      url: 'https://www.youtube.com/watch?v=UKAp-jRUp2o'
    }

    exercise3

    expect(File.read(database)).to eq(person.to_yaml)

    $stdout = out
  end
end
