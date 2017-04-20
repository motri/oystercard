require 'journey'
require 'oystercard'

describe Journey do

  let(:card) { Oystercard.new } # let(:card){double: card}
  before do
    @min = Oystercard::MIN_FUNDS

  end

  it 'starts with an empty travel history' do
    expect(subject.history).to eq []
  end

  describe '#start' do
    station = 'station'
    it 'sets status to in journey' do
      card.top_up(@min); card.touch_in(station)
      expect(card.trip.in_journey).to eq true
    end
    it 'sets entry_station' do
      card.top_up(@min); card.touch_in(station)
      expect(card.trip.entry_station).to eq station
    end
  end





end
