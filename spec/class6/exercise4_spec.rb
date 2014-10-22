RSpec.describe 'Class 6 Exercise 4' do
  let(:exercise4) do
    load File.expand_path('../../../lib/class6/exercise4.rb', __FILE__)
  end

  it 'loads the person key-value pairs and displays the result' do
    database = File.absolute_path('../../../lib/class6/database.yml', __FILE__)
    message = <<END
Loaded 4 key-value pairs in #{database}
:name => "George Harrison"
:age => 58
:song => "Something"
:url => "https://www.youtube.com/watch?v=UKAp-jRUp2o"
END

    expect { exercise4 }.to output(message).to_stdout
  end
end
