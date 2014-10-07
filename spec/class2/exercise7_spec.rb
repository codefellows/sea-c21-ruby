RSpec.describe 'Class 2 Exercise 7' do
  let(:exercise7) do
    load File.expand_path('../../../lib/class2/exercise7.rb', __FILE__)
  end

  it 'outputs to STDOUT' do
    expect { exercise7 }.to output.to_stdout
  end

  it "displays a table of contents that's correctly spaced" do
    message = <<END
Chapter 1:  Getting Started                page  1
Chapter 2:  Numbers                        page  9
Chapter 3:  Letters                        page 13
END

    message = 'Table of Contents'.center(50) + "\n#{message}"

    expect { exercise7 }.to output(message).to_stdout
  end
end
