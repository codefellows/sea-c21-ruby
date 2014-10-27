require 'class7/exercise2'

RSpec.describe OrangeTree do
  let(:orange_tree) { OrangeTree.new }

  describe '#new' do
    it 'initializes a new OrangeTree to 50 @fruit' do
      expect(orange_tree.instance_variable_get(:@fruit)).to eq(50)
    end
  end

  describe '#fruit' do
    it 'returns the value of @fruit' do
      expect(orange_tree.fruit).to eq(50)
    end
  end
end
