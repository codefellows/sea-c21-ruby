RSpec.describe 'Class 8 Exercise 5' do
  let(:exercise5) do
    load File.expand_path('../../../lib/class8/exercise5.rb', __FILE__)
  end

  hours = %w(1 2 3 4 5 6 7 8 9 10 11 12)

  hours.each do |hour|
    context "with an input of #{hour}" do
      before(:each) { ARGV[0] = hour }

      it 'acts like a grandfather clock' do
        message = <<END.chomp
#{"DONG!\n" * hour.to_i}
END

        expect { exercise5 }.to output(message).to_stdout
      end
    end
  end
end
