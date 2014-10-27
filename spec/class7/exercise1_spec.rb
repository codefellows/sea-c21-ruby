require 'class7/exercise1'

RSpec.describe Integer do
  hours_in_seconds = {
    24 => 86_400,
    12 => 43_200,
     6 => 21_600,
     3 => 10_800,
     1 =>  3_600,
     0 =>      0
  }

  hours_in_seconds.each do |hour, second|
    it "calculates #{hour} hours in seconds" do
      expect(hour.hours_in_seconds).to eq(second)
    end
  end
end

RSpec.describe String do
  it 'indents foo by 3 spaces' do
    expect('foo'.indent(3)).to eq('   foo')
  end

  it 'indents foo by 2 spaces' do
    expect('foo'.indent(2)).to eq('  foo')
  end

  it 'indents foo by 1 space' do
    expect('foo'.indent(1)).to eq('  foo')
  end

  it 'indents foo by 0 spaces' do
    expect('foo'.indent(0)).to eq('foo')
  end

  it 'indents foo by the default amount of spaces' do
    expect('foo'.indent).to eq('  foo')
  end
end

RSpec.describe Integer do
  arabics_to_romans = {
       1 => 'I',
       2 => 'II',
       3 => 'III',
       4 => 'IV',
       5 => 'V',
       6 => 'VI',
       7 => 'VII',
       8 => 'VIII',
       9 => 'IX',
      10 => 'X',
      20 => 'XX',
      30 => 'XXX',
      40 => 'XL',
      50 => 'L',
      60 => 'LX',
      70 => 'LXX',
      80 => 'LXXX',
      90 => 'XC',
     100 => 'C',
     200 => 'CC',
     300 => 'CCC',
     400 => 'CD',
     500 => 'D',
     600 => 'DC',
     700 => 'DCC',
     800 => 'DCCC',
     900 => 'CM',
    1000 => 'M',
     444 => 'CDXLIV',
     999 => 'CMXCIX'
  }

  arabics_to_romans.each do |arabic, roman|
    it "transforms #{arabic} into a Roman numeral" do
      expect(arabic.to_roman).to eq(roman)
    end
  end
end

RSpec.describe Array do
  it 'gets the 2nd element of an Array with 3 elements' do
    expect([10, 20, 30].second).to eq(20)
  end

  it 'gets the 2nd element of an Array with 2 elements' do
    expect([10, 20].second).to eq(20)
  end

  it 'gets the 2nd element of an Array with 1 elements' do
    expect([10].second).to be_nil
  end

  it 'gets the 2nd element of an Array with 0 elements' do
    expect([].second).to be_nil
  end
end

RSpec.describe Array do
  it 'gets the 3rd element of an Array with 4 elements' do
    expect([10, 20, 30, 40].third).to eq(30)
  end

  it 'gets the 3rd element of an Array with 3 elements' do
    expect([10, 20, 30].third).to eq(30)
  end

  it 'gets the 3rd element of an Array with 2 elements' do
    expect([10, 20].third).to be_nil
  end

  it 'gets the 3rd element of an Array with 1 elements' do
    expect([10].third).to be_nil
  end

  it 'gets the 3rd element of an Array with 0 elements' do
    expect([].third).to be_nil
  end
end
