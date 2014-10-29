RSpec.describe 'Class 8 Exercise 6' do
  let(:exercise6) do
    load File.expand_path('../../../lib/class8/exercise6.rb', __FILE__)
  end

  hours_sounds = {
    '1'  => 'GONG!',
    '2'  => 'GONGG!',
    '3'  => 'GONGGG!',
    '4'  => 'GONGGGG!',
    '5'  => 'GONGGGGG!',
    '6'  => 'GONGGGGGG!',
    '7'  => 'GONGGGGGGG!',
    '8'  => 'GONGGGGGGGG!',
    '9'  => 'GONGGGGGGGGG!',
    '10' => 'GONGGGGGGGGGG!',
    '11' => 'GONGGGGGGGGGGG!',
    '12' => 'GONGGGGGGGGGGGG!'
  }

  hours_sounds.each do |hour, sound|
    context "with an input of #{hour} and #{sound}" do
      before(:each) do
        ARGV[0] = hour
        ARGV[1] = sound
      end

      it 'acts like a smart grandfather clock' do
        message = <<END.chomp
#{"#{sound}\n" * hour.to_i}
END

        expect { exercise6 }.to output(message).to_stdout
      end
    end
  end
end
