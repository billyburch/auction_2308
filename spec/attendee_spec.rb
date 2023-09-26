require './lib/item'
require './lib/auction'
require './lib/attendee'

RSpec.describe Attendee do
  before(:each) do
    @attendee = Attendee.new({name: 'Megan', budget: '$50'})
    @attendee2 = Attendee.new({name: 'Bob', budget: '$75'})
    @attende4e3 = Attendee.new({name: 'Mike', budget: '$100'})
  end

  describe '#initialize' do
    it 'exists' do
      expect(@attendee).to be_a(Attendee)
    end

    it 'has a name and budget' do
      expect(@attendee.name).to eq('Megan')
      expect(@attendee.budget).to eq(50)
    end
  end
end