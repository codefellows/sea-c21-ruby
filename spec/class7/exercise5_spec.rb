require 'class7/exercise5'

RSpec.describe OrangeTree do
  let(:orange_tree) { OrangeTree.new }

  describe '#pick' do
    it 'picks 1 fruit' do
      expect(orange_tree.pick(1)).to eq(OrangeTree.new(49))
      expect(orange_tree.fruit).to eq(50)
    end

    it 'picks 49 fruit' do
      expect(orange_tree.pick(49)).to eq(OrangeTree.new(1))
      expect(orange_tree.fruit).to eq(50)
    end

    it 'picks 50 fruit' do
      expect(orange_tree.pick(50)).to eq(OrangeTree.new(0))
      expect(orange_tree.fruit).to eq(50)
    end

    it 'picks 51 fruit' do
      expect(orange_tree.pick(51)).to eq(orange_tree)
      expect(orange_tree.fruit).to eq(50)
    end

    it 'picks the default amount of fruit' do
      expect(orange_tree.pick).to eq(OrangeTree.new(49))
      expect(orange_tree.fruit).to eq(50)
    end

    it 'picks 5 fruit then 25 fruit' do
      expect(orange_tree.pick(5)).to eq(OrangeTree.new(45))
      expect(orange_tree.fruit).to eq(50)

      expect(orange_tree.pick(25)).to eq(OrangeTree.new(25))
      expect(orange_tree.fruit).to eq(50)
    end
  end
end
