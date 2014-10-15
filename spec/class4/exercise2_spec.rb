RSpec.describe 'Class 4 Exercise 2' do
  let(:exercise2) do
    load File.expand_path('../../../lib/class4/exercise2.rb', __FILE__)
  end

  it "displays a table of 90's Hip-Hop hits" do
    message = <<END
Can I Kick It?      A Tribe Called Quest      1991
Rump Shaker         Wreckx-n-Effect           1992
Check Yo Self       Ice Cube                  1993
Regulate            Warren G & Nate Dogg      1994
I Got 5 On It       Luniz                     1995
Ready Or Not        The Fugees                1996
END

    expect { exercise2 }.to output(message).to_stdout
  end
end
