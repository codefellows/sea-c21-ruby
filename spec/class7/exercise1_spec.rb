require 'class7/exercise1'

RSpec.describe Integer do
  it 'calculates 24 hours in seconds' do
    expect(24.hours_in_seconds).to eq(86_400)
  end

  it 'calculates 12 hours in seconds' do
    expect(12.hours_in_seconds).to eq(43_200)
  end

  it 'calculates 6 hours in seconds' do
    expect(6.hours_in_seconds).to eq(21_600)
  end

  it 'calculates 3 hours in seconds' do
    expect(3.hours_in_seconds).to eq(10_800)
  end

  it 'calculates 1 hour in seconds' do
    expect(1.hours_in_seconds).to eq(3600)
  end

  it 'calculates 0 hours in seconds' do
    expect(0.hours_in_seconds).to eq(0)
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
    expect('foo'.indent(1)).to eq(' foo')
  end

  it 'indents foo by 0 spaces' do
    expect('foo'.indent(0)).to eq('foo')
  end

  it 'indents foo by the default amount of spaces' do
    expect('foo'.indent).to eq('  foo')
  end
end

RSpec.describe Integer do
  it 'transforms 1 into a roman numeral' do
    expect(1.to_roman).to eq('I')
  end

  it 'transforms 2 into a roman numeral' do
    expect(2.to_roman).to eq('II')
  end

  it 'transforms 3 into a roman numeral' do
    expect(3.to_roman).to eq('III')
  end

  it 'transforms 4 into a roman numeral' do
    expect(4.to_roman).to eq('IV')
  end

  it 'transforms 5 into a roman numeral' do
    expect(5.to_roman).to eq('V')
  end

  it 'transforms 6 into a roman numeral' do
    expect(6.to_roman).to eq('VI')
  end

  it 'transforms 7 into a roman numeral' do
    expect(7.to_roman).to eq('VII')
  end

  it 'transforms 8 into a roman numeral' do
    expect(8.to_roman).to eq('VIII')
  end

  it 'transforms 9 into a roman numeral' do
    expect(9.to_roman).to eq('IX')
  end

  it 'transforms 10 into a roman numeral' do
    expect(10.to_roman).to eq('X')
  end

  it 'transforms 20 into a roman numeral' do
    expect(20.to_roman).to eq('XX')
  end

  it 'transforms 30 into a roman numeral' do
    expect(30.to_roman).to eq('XXX')
  end

  it 'transforms 40 into a roman numeral' do
    expect(40.to_roman).to eq('XL')
  end

  it 'transforms 50 into a roman numeral' do
    expect(50.to_roman).to eq('L')
  end

  it 'transforms 60 into a roman numeral' do
    expect(60.to_roman).to eq('LX')
  end

  it 'transforms 70 into a roman numeral' do
    expect(70.to_roman).to eq('LXX')
  end

  it 'transforms 80 into a roman numeral' do
    expect(80.to_roman).to eq('LXXX')
  end

  it 'transforms 90 into a roman numeral' do
    expect(90.to_roman).to eq('XC')
  end

  it 'transforms 100 into a roman numeral' do
    expect(100.to_roman).to eq('C')
  end

  it 'transforms 200 into a roman numeral' do
    expect(200.to_roman).to eq('CC')
  end

  it 'transforms 300 into a roman numeral' do
    expect(300.to_roman).to eq('CCC')
  end

  it 'transforms 400 into a roman numeral' do
    expect(400.to_roman).to eq('CD')
  end

  it 'transforms 500 into a roman numeral' do
    expect(500.to_roman).to eq('D')
  end

  it 'transforms 600 into a roman numeral' do
    expect(600.to_roman).to eq('DC')
  end

  it 'transforms 700 into a roman numeral' do
    expect(700.to_roman).to eq('DCC')
  end

  it 'transforms 800 into a roman numeral' do
    expect(800.to_roman).to eq('DCCC')
  end

  it 'transforms 900 into a roman numeral' do
    expect(900.to_roman).to eq('CM')
  end

  it 'transforms 1000 into a roman numeral' do
    expect(1000.to_roman).to eq('M')
  end

  it 'transforms 444 into a roman numeral' do
    expect(444.to_roman).to eq('CDXLIV')
  end

  it 'transforms 999 into a roman numeral' do
    expect(999.to_roman).to eq('CMXCIX')
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
