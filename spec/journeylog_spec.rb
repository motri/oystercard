require 'journeylog'
describe JourneyLog do

  describe '#start' do
    it 'starts a journey' do
      subject = Journey.new
      station = 'Abbey Wood'
      subject.start(station)
    end

    it 'records a journey' do
      journey = Journey.new
      station = 'Abbey Wood'
      journey.start(station)
      expect(subject.journey.trip).to include station
    end
  end
end
