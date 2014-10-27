require 'class7/exercise4'

RSpec.describe OrangeTree do
  let(:orange_tree) { OrangeTree.new }

  describe '#new' do
    it 'has 50 fruit' do
      expect(OrangeTree.new(50).instance_variable_get(:@fruit)).to eq(50)
    end

    it 'has 20 fruit' do
      expect(OrangeTree.new(20).instance_variable_get(:@fruit)).to eq(20)
    end

    it 'has 50 fruit by default' do
      expect(orange_tree.instance_variable_get(:@fruit)).to eq(50)
    end
  end

  describe '#==' do
    it 'equals another orange tree with 20' do
      expect(orange_tree).to eq(OrangeTree.new(50))
    end

    it 'does not equals another orange tree with 10' do
      expect(orange_tree).not_to eq(OrangeTree.new(10))
    end

    it 'equals another orange tree with the default amount of fruit' do
      expect(orange_tree).to eq(OrangeTree.new)
    end
  end
end
