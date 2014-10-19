RSpec.describe 'Class 5 Exercise 5' do
  let(:exercise5) do
    Kernel.load File.expand_path('../../../lib/class5/exercise5.rb', __FILE__)
  end

  let(:database) do
    File.absolute_path('../../../lib/class5/database.yml', __FILE__)
  end

  buzzwords = {
    1 => 'Incentivized methodologies',
    2 => 'Seemless innovation',
    3 => 'Corporate synergy',
    4 => 'Scalable globalization',
    5 => 'Monetized assets'
  }

  buzzwords.each do |input, buzzword|
    context "with an argument of #{input}" do
      before { ARGV[0] = input }

      it 'displays the single record that matches a user-given id number' do
        message = <<-END
Found record ##{input} from #{database}
#{buzzword}
END
        expect { exercise5 }.to output(message).to_stdout
      end
    end
  end

  context 'with an argument of 6' do
    before { ARGV[0] = 6 }

    it 'displays an error because no records match a user-given id number' do
      message = <<-END
Could't find record #6 from #{database}
END
      expect { exercise5 }.to output(message).to_stdout
    end
  end
end
