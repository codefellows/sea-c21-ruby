RSpec.describe 'Class 3 Exercise 1' do
  let(:exercise3) do
    load File.expand_path('../../../lib/class3/exercise1.rb', __FILE__)
  end

  it 'displays the lyrics to the beloved nursery rhyme' do
    message = <<END
3 bottles of beer on the wall, 3 bottles of beer!
Take one down, pass it around, 2 bottles of beer on the wall!
2 bottles of beer on the wall, 2 bottles of beer!
Take one down, pass it around, 1 bottle of beer on the wall!
1 bottle of beer on the wall, 1 bottle of beer!
Take one down, pass it around, no more bottles of beer on the wall!
No more bottles of beer on the wall, no more bottles of beer!
Go to the store and buy some more, 3 bottles of beer on the wall!
END

    expect { exercise3 }.to output(message).to_stdout
  end
end
