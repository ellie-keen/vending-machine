class VendingMachine

  attr_reader :crisps_stock, :water_stock, :bought_items

  def initialize
    @crisps_stock = ["Crisps", "Crisps", "Crisps"]
    @water_stock = ["Water", "Water", "Water"]
    @bought_items = []
  end

  def buy(item)
    item == "Water" ? @water_stock.pop : @crisps_stock.pop
    @bought_items << item
  end

end
