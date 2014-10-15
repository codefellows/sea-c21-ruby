RSpec.describe 'Class 4 Exercise 4' do
  let(:exercise4) do
    load File.expand_path('../../../lib/class4/exercise4.rb', __FILE__)
  end

  arabics_to_romans = [
    [1, 'I'],
    [2, 'II'],
    [3, 'III'],
    [4, 'IIII'],
    [5, 'V'],
    [6, 'VI'],
    [7, 'VII'],
    [8, 'VIII'],
    [9, 'VIIII'],
    [10, 'X'],
    [20, 'XX'],
    [30, 'XXX'],
    [40, 'XXXX'],
    [50, 'L'],
    [60, 'LX'],
    [70, 'LXX'],
    [80, 'LXXX'],
    [90, 'LXXXX'],
    [100, 'C'],
    [200, 'CC'],
    [300, 'CCC'],
    [400, 'CCCC'],
    [500, 'D'],
    [600, 'DC'],
    [700, 'DCC'],
    [800, 'DCCC'],
    [900, 'DCCCC'],
    [1000, 'M'],
    [444, 'CCCCXXXXIIII'],
    [999, 'DCCCCLXXXXVIIII']
  ]

  arabics_to_romans.each do |arabic_to_roman|
    arabic, roman = arabic_to_roman

    context "with an argument of #{arabic}" do
      before { ARGV[0] = arabic }

      it 'transforms the argument into a roman numeral' do
        expect { exercise4 }.to output("#{roman}\n").to_stdout
      end
    end
  end
end
