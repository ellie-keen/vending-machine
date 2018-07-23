require 'vending_machine'

describe 'Vending Machine' do

  let (:vending_machine) { VendingMachine.new }

  it 'should be initialized with crisps' do
    expect(vending_machine.crisps_stock).to eq(["Crisps", "Crisps", "Crisps"])
  end

  it 'should be initialized with water' do
    expect(vending_machine.water_stock).to eq(["Water", "Water", "Water"])
  end

  describe '#buy' do
    it "should remove water from water_stock array" do
      vending_machine.buy("Water")
      expect(vending_machine.water_stock).to eq(["Water", "Water"])
    end

    it "should remove crisps from crisps_stock array" do
      vending_machine.buy("Crisps")
      expect(vending_machine.crisps_stock).to eq(["Crisps", "Crisps"])
    end

    it "should add item to bought_items" do
       expect{vending_machine.buy("Water")}.to change{vending_machine.bought_items.length}.from(0).to(1)
    end
  end

end
