require 'coin'

describe 'Coin' do
  it 'should be initialized with a number' do
    coin = Coin.new(50)
    expect(coin.value).to eq(50)
  end
end
