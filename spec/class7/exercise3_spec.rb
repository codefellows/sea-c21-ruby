require 'class7/exercise3'

RSpec.describe OrangeTree do
  describe '#new' do
    it 'has 50 fruit' do
      expect(subject.instance_variable_get(:@fruit)).to eq(50)
    end
  end

  describe '#fruit' do
    it 'gets @fruit' do
      expect(subject.fruit).to eq(50)
    end
  end

  describe '#pick!' do
    it 'picks 1 fruit' do
      expect(subject.pick!(1)).to eq(49)
      expect(subject.fruit).to eq(49)
    end

    it 'picks 49 fruit' do
      expect(subject.pick!(49)).to eq(1)
      expect(subject.fruit).to eq(1)
    end

    it 'picks 50 fruit' do
      expect(subject.pick!(50)).to eq(0)
      expect(subject.fruit).to eq(0)
    end

    it 'picks 51 fruit' do
      expect(subject.pick!(51)).to be_nil
      expect(subject.fruit).to eq(50)
    end

    it 'picks the default amount of fruit' do
      expect(subject.pick!).to eq(49)
      expect(subject.fruit).to eq(49)
    end

    it 'picks 5 fruit then 25 fruit' do
      expect(subject.pick(5)).to eq(45)
      expect(subject.fruit).to eq(45)

      expect(subject.pick(25)).to eq(20)
      expect(subject.fruit).to eq(20)
    end
  end
end
