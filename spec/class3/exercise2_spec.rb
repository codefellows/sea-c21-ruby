RSpec.describe 'Class 3 Exercise 2' do
  let(:exercise2) do
    load File.expand_path('../../../lib/class3/exercise2.rb', __FILE__)
  end

  before { srand(42) }

  context 'a short conversation' do
    before do
      allow_any_instance_of(Kernel).to receive(:gets).and_return('BYE')
    end

    it 'chats with nana' do
      message = <<END
Nana: HI SWEETIE! GIVE NANA A KISS!
Nana: BYE SWEETIE!
END

      expect { exercise2 }.to output(message).to_stdout
    end
  end

  context 'a medium conversation' do
    before do
      responses = %w(bye BYE)
      allow_any_instance_of(Kernel).to receive(:gets).and_return(*responses)
    end

    it 'chats with nana' do
      message = <<END
Nana: HI SWEETIE! GIVE NANA A KISS!
Nana: HUH?! SPEAK UP, SWEETIE!
Nana: BYE SWEETIE!
END

      expect { exercise2 }.to output(message).to_stdout
    end
  end

  context 'a long conversation' do
    before do
      responses = ['hi nana', 'HI NANA', 'BYE']
      allow_any_instance_of(Kernel).to receive(:gets).and_return(*responses)
    end

    it 'chats with nana' do
      message = <<END
Nana: HI SWEETIE! GIVE NANA A KISS!
Nana: HUH?! SPEAK UP, SWEETIE!
Nana: NOT SINCE 1936!
Nana: BYE SWEETIE!
END

      expect { exercise2 }.to output(message).to_stdout
    end
  end

  context 'a forever conversation' do
    before do
      responses = ['hi nana', 'HI NANA', 'what?', 'WHAT?', 'bye', 'BYE']
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
Nana: BYE SWEETIE!
END

      expect { exercise2 }.to output(message).to_stdout
    end
  end
end
