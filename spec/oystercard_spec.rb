require 'oystercard'

describe Oystercard do

  it 'checks the cards balance' do
    expect(subject.balance).not_to eq nil
  end

end
