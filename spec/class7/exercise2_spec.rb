require 'class7/exercise2'

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
end
