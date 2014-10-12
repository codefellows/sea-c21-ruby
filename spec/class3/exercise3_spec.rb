RSpec.describe 'Class 3 Exercise 3' do
  let(:exercise3) do
    load File.expand_path('../../../lib/class3/exercise3.rb', __FILE__)
  end

  before { srand(42) }

  context 'a short conversation' do
    before do
      responses = %w(BYE BYE BYE)
      allow_any_instance_of(Kernel).to receive(:gets).and_return(*responses)
    end

    it 'chats with nana' do
      message = <<END
Nana: HI SWEETIE! GIVE NANA A KISS!
Nana: HOW'S SCHOOL GOING?
Nana: HOW'S SCHOOL GOING?
Nana: BYE SWEETIE!
END

      expect { exercise3 }.to output(message).to_stdout
    end
  end

  context 'a faux pas conversation' do
    before do
      responses = %w(BYE BYE bye BYE BYE BYE)
      allow_any_instance_of(Kernel).to receive(:gets).and_return(*responses)
    end

    it 'chats with nana' do
      message = <<END
Nana: HI SWEETIE! GIVE NANA A KISS!
Nana: HOW'S SCHOOL GOING?
Nana: HOW'S SCHOOL GOING?
Nana: HUH?! SPEAK UP, SWEETIE!
Nana: HOW'S SCHOOL GOING?
Nana: HOW'S SCHOOL GOING?
Nana: BYE SWEETIE!
END

      expect { exercise3 }.to output(message).to_stdout
    end
  end

  context 'a medium conversation' do
    before do
      responses = %w(bye BYE BYE BYE)
      allow_any_instance_of(Kernel).to receive(:gets).and_return(*responses)
    end

    it 'chats with nana' do
      message = <<END
Nana: HI SWEETIE! GIVE NANA A KISS!
Nana: HUH?! SPEAK UP, SWEETIE!
Nana: HOW'S SCHOOL GOING?
Nana: HOW'S SCHOOL GOING?
Nana: BYE SWEETIE!
END

      expect { exercise3 }.to output(message).to_stdout
    end
  end

  context 'a long conversation' do
    before do
      responses = ['hi nana', 'HI NANA', 'BYE', 'BYE', 'BYE']
      allow_any_instance_of(Kernel).to receive(:gets).and_return(*responses)
    end

    it 'chats with nana' do
      message = <<END
Nana: HI SWEETIE! GIVE NANA A KISS!
Nana: HUH?! SPEAK UP, SWEETIE!
Nana: NOT SINCE 1936!
Nana: HOW'S SCHOOL GOING?
Nana: HOW'S SCHOOL GOING?
Nana: BYE SWEETIE!
END

      expect { exercise3 }.to output(message).to_stdout
    end
  end

  context 'a forever conversation' do
    before do
      responses = [
        'hi nana', 'HI NANA', 'what?', 'WHAT?', 'bye', 'BYE', 'BYE', 'BYE'
      ]
      allow_any_instance_of(Kernel).to receive(:gets).and_return(*responses)
    end

    it 'chats with nana' do
      message = <<END
Nana: HI SWEETIE! GIVE NANA A KISS!
Nana: HUH?! SPEAK UP, SWEETIE!
Nana: NOT SINCE 1936!
Nana: HUH?! SPEAK UP, SWEETIE!
Nana: NOT SINCE 1949!
Nana: HUH?! SPEAK UP, SWEETIE!
Nana: HOW'S SCHOOL GOING?
Nana: HOW'S SCHOOL GOING?
Nana: BYE SWEETIE!
END

      expect { exercise3 }.to output(message).to_stdout
    end
  end
end
