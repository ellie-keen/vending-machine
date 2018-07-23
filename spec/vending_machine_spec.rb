require 'vending_machine'

describe 'Vending Machine' do

  let (:vending_machine) { VendingMachine.new }

  it 'should be initialized with crisps' do
    expect(vending_machine.crisps_stock).to eq(["Crisps", "Crisps", "Crisps"])
  end

  it 'should be initialized with water' do
    expect(vending_machine.water_stock).to eq(["Water", "Water", "Water"])
  end

end
