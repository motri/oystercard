require_relative 'journey'


class JourneyLog
  def initialize
    @trip = {}
    @journeys = []
  end

  def start
    journey = Journey.new
    journey.start(station)
    @trip[@entry_station]
  end

end
