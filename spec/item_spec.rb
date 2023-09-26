require './lib/item'
require './lib/auction'
require './lib/attendee'

RSpec.describe Item do
  before(:each) do
    @item1 = Item.new('Chalkware Piggy Bank')
    @item2 = Item.new('Bamboo Picture Frame')
    @item3 = Item.new('Homemade Chocolate Chip Cookies')
  end

  describe '#initialize' do
    it 'exists' do
      expect(@item1).to be_a(Item)
    end

    it 'has a name' do
      expect(@item1.name).to eq('Chalkware Piggy Bank')
    end
  end

  describe '#adds multiple items' do
    it 'returns item1 and item2 as objects with names' do

      expect(@item1).to be_a(Item)
      expect(@item2).to be_a(Item)
      expect(@item1.name).to eq('Chalkware Piggy Bank')
      expect(@item2.name).to eq('Bamboo Picture Frame')
    end
  end


end
