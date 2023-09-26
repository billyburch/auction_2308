class Auction
  attr_reader :items, :bids

  def initialize
    @items = []    
  end

  def add_item(item)
    @items << item
  end

  def item_names
    @items.map do |item|
      item.name
    end
  end

  def unpopular_items
    unpopular_items = []
    @items.map do |item|
      if item.bids == {}
      unpopular_items << item
      end
    end
    unpopular_items
  end

  def items_with_bids
    items_with_bids = []
    @items.map do |item|
      if item.bids.empty? == false
        items_with_bids << item
      end
    end
    items_with_bids
  end

  def potential_revenue
    potential_revenue = 0
    items_with_bids.uniq.each do |item|
      potential_revenue += item.bids.values.max
    end
    potential_revenue
  end

  # def bidders
  #   bidders = []
  #   @items_with_bids do |item|
  #     bidders << item.bids.key[0].name
  #   end
  #   bidders
  # end

  # def bidder_info
  #   bidder_info = {}
  #   @items.each do |item|
  #     item.bids.each do |item, budget|
  #       bidder_info[item] = {
  #         budget: 
  #         items: items_with_bids(item)
  #       }
  #     end
  #   end
  #   bidder_info
  # end

  # def close_bidding

  # end
end