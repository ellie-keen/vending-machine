class VendingMachine

  attr_reader :crisps_stock, :water_stock, :bought_items

  def initialize
    @crisps_stock = ["Crisps", "Crisps", "Crisps"]
    @water_stock = ["Water", "Water", "Water"]
    @bought_items = []
  end

  def buy(item)
    check_stock(item)
    item == "Water" ? @water_stock.pop : @crisps_stock.pop
    @bought_items << item
  end

  private

  def check_stock(item)
    if item == "Water" && !@water_stock.include?("Water") || item == "Crisps" && !@crisps_stock.include?("Crisps")
      raise "Item is unavailable"
    end
  end

end
