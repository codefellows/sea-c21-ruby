require 'class7/exercise5'

RSpec.describe OrangeTree do
  describe '#pick' do
    it 'picks 1 fruit' do
      expect(subject.pick!(1)).to eq(OrangeTree.new(49))
      expect(subject.fruit).to eq(50)
    end

    it 'picks 49 fruit' do
      expect(subject.pick!(49)).to eq(OrangeTree.new(1))
      expect(subject.fruit).to eq(50)
    end

    it 'picks 50 fruit' do
      expect(subject.pick!(50)).to eq(OrangeTree.new(0))
      expect(subject.fruit).to eq(50)
    end

    it 'picks 51 fruit' do
      expect(subject.pick!(51)).to be_nil
      expect(subject.fruit).to eq(50)
    end

    it 'picks the default amount of fruit' do
      expect(subject.pick!).to eq(OrangeTree.new(49))
      expect(subject.fruit).to eq(50)
    end

    it 'picks 5 fruit then 25 fruit' do
      expect(subject.pick(5)).to eq(OrangeTree.new(45))
      expect(subject.fruit).to eq(50)

      expect(subject.pick(25)).to eq(OrangeTree.new(25))
      expect(subject.fruit).to eq(50)
    end
  end
end
