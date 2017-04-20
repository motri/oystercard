class Journey

  attr_reader :history
  attr_accessor :in_journey, :entry_station

  def initialize
    @history = []
    @in_journey = false
    @entry_station = nil
  end

  def start
    @in_journey = true
  end

  def in_journey?
    @in_journey
  end

end
