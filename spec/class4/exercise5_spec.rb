RSpec.describe 'Class 4 Exercise 5' do
  let(:exercise5) do
    load File.expand_path('../../../lib/class4/exercise5.rb', __FILE__)
  end

  arabics_to_romans = [
    [1, 'I'],
    [2, 'II'],
    [3, 'III'],
    [4, 'IV'],
    [5, 'V'],
    [6, 'VI'],
    [7, 'VII'],
    [8, 'VIII'],
    [9, 'IX'],
    [10, 'X'],
    [20, 'XX'],
    [30, 'XXX'],
    [40, 'XL'],
    [50, 'L'],
    [60, 'LX'],
    [70, 'LXX'],
    [80, 'LXXX'],
    [90, 'XC'],
    [100, 'C'],
    [200, 'CC'],
    [300, 'CCC'],
    [400, 'CD'],
    [500, 'D'],
    [600, 'DC'],
    [700, 'DCC'],
    [800, 'DCCC'],
    [900, 'CM'],
    [1000, 'M'],
    [444, 'CDXLIV'],
    [999, 'CMXCIX']
  ]

  arabics_to_romans.each do |arabic_to_roman|
    arabic, roman = arabic_to_roman

    context "with an argument of #{arabic}" do
      before { ARGV[0] = arabic }

      it 'transforms the argument into a roman numeral' do
        expect { exercise5 }.to output("#{roman}\n").to_stdout
      end
    end
  end
end
