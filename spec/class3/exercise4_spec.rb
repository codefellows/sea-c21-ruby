RSpec.describe 'Class 3 Exercise 4' do
  let(:exercise4) do
    load File.expand_path('../../../lib/class3/exercise4.rb', __FILE__)
  end

  it 'displays all the leap years between 1900 and 2000' do
    message = <<END
1904
1908
1912
1916
1920
1924
1928
1932
1936
1940
1944
1948
1952
1956
1960
1964
1968
1972
1976
1980
1984
1988
1992
1996
2000
END

    expect { exercise4 }.to output(message).to_stdout
  end
end
