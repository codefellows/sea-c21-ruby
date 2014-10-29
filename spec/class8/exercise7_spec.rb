require 'class8/exercise7'

RSpec.describe Array do
  it "replacing all occurances of 'YOLO' and 'yolo'" do
    msg = <<END
OMG
Life is too short
ROTFL
Life is too short
FTW
END

    expect do
      %w(OMG YOLO ROTFL yolo FTW).each_without_yolo { |e| puts e }
    end.to output(msg).to_stdout
  end
end
