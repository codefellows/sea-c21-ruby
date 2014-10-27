require 'class7/exercise4'

RSpec.describe OrangeTree do
  let(:orange_tree) { OrangeTree.new }

  describe '#new' do
    it 'initializes a new OrangeTree to 50 @fruit' do
      expect(OrangeTree.new(50).instance_variable_get(:@fruit)).to eq(50)
    end

    it 'initializes a new OrangeTree to 20 @fruit' do
      expect(OrangeTree.new(20).instance_variable_get(:@fruit)).to eq(20)
    end

    it 'initializes a new OrangeTree to 50 @fruit by default' do
      expect(OrangeTree.new.instance_variable_get(:@fruit)).to eq(50)
    end
  end

  describe '#fruit' do
    it 'returns the value of @fruit' do
      expect(orange_tree.fruit).to eq(50)
    end
  end

  describe '#pick!' do
    it 'picks 1 fruit and has 49 @fruit remaining' do
      expect(orange_tree.pick!(1)).to eq(49)
      expect(orange_tree.fruit).to eq(49)
    end

    it 'picks 49 fruit and has 1 @fruit remaining' do
      expect(orange_tree.pick!(49)).to eq(1)
      expect(orange_tree.fruit).to eq(1)
    end

    it 'picks 50 fruit and has 0 @fruit remaining' do
      expect(orange_tree.pick!(50)).to eq(0)
      expect(orange_tree.fruit).to eq(0)
    end

    it 'fails to pick 51 fruit and has 50 @fruit remaining' do
      expect(orange_tree.pick!(51)).to be_nil
      expect(orange_tree.fruit).to eq(50)
    end

    it 'picks the default amount of fruit and has 49 @fruit remaining' do
      expect(orange_tree.pick!).to eq(49)
      expect(orange_tree.fruit).to eq(49)
    end

    it 'picks 5 fruit then 25 fruit' do
      expect(orange_tree.pick!(5)).to eq(45)
      expect(orange_tree.fruit).to eq(45)

      expect(orange_tree.pick!(25)).to eq(20)
      expect(orange_tree.fruit).to eq(20)
    end
  end

  describe '#==' do
    it 'equals another instance of OrangeTree with 50 @fruit' do
      expect(OrangeTree.new).to eq(OrangeTree.new(50))
    end

    it 'does not equal another instance of OrangeTree with 10 @fruit' do
      expect(OrangeTree.new).not_to eq(OrangeTree.new(10))
    end

    it 'equals another default instance of OrangeTree' do
      expect(OrangeTree.new).to eq(OrangeTree.new)
    end
  end
end
